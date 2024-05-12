import 'dart:typed_data';
import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:stocktacking/core/presentation/app_bar/build_app_bar.dart';
import 'package:stocktacking/core/presentation/panel/panel.dart';
import 'package:open_file/open_file.dart';
import 'package:stocktacking/core/riverpod/async_state.dart';
import 'package:stocktacking/features/stuff/presentation/notifiers/physical_identifier_page_notifier.dart';

class StuffPhysicalIdentifier extends ConsumerStatefulWidget {
  const StuffPhysicalIdentifier({super.key, required this.stuffId});

  final int stuffId;

  @override
  ConsumerState<StuffPhysicalIdentifier> createState() => _StuffPhysicalIdentifierState();
}

class _StuffPhysicalIdentifierState extends ConsumerState<StuffPhysicalIdentifier> {

  final _qrKey = GlobalKey();

  Future<void> downloadAsPng() async{
    final boundary = _qrKey.currentContext?.findRenderObject();
    if(boundary is! RenderRepaintBoundary) return;
    ui.Image image = await boundary.toImage();
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    if(byteData == null) return;
    ref
        .read(physicalIdentifierPageNotifierProvider
        .call(widget.stuffId).notifier)
        .downloadFile(byteData);
  }

  Future<bool> isFileExist() async {
    File imgFile  = File('/storage/emulated/0/Download/qr-code-${widget.stuffId}.png');
    return imgFile.exists();
  }

  Future<void> launchFile() async {
    File imgFile  = File('/storage/emulated/0/Download/qr-code-${widget.stuffId}.png');
    // Pers
    await Permission.manageExternalStorage
        .onGrantedCallback(() async => await OpenFile.open(imgFile.path))
        .request();
  }

  @override
  void initState() {
    WidgetsFlutterBinding
        .ensureInitialized()
        .addPostFrameCallback((timeStamp) => ref
        .read(physicalIdentifierPageNotifierProvider
        .call(widget.stuffId).notifier)
        .init()
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final pageState = ref.watch(physicalIdentifierPageNotifierProvider.call(widget.stuffId));
    final stuffTitle = switch(pageState.getStuffState) {
      Successful(:final v) => v.title,
      _ => 'Неопределенно'
    };

    return Scaffold(
      appBar: buildAppBar(
          context: context,
          title: 'Идентификатор',
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Panel(
            child: Builder(
              builder: (context) {
                if(!pageState.isLoaded) return const Center(child: CircularProgressIndicator());
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    RepaintBoundary(
                      key: _qrKey,
                      child: Panel(
                        child: Column(
                          children: [
                            Center(
                              child: QrImageView(
                                data: widget.stuffId.toString(),
                                backgroundColor: Colors.white,
                                size: 300.0,
                                semanticsLabel: '$stuffTitle #${widget.stuffId}',
                              ),
                            ),
                            Text(
                                '$stuffTitle #${widget.stuffId}',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black
                                )
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 14),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                              onPressed: switch(pageState.existFileState) {
                                Successful(:final v) => v
                                    ? launchFile
                                    : downloadAsPng,
                                _ => null
                              },
                              style:  const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(Color(0x333FE06C))
                              ),
                              child: switch(pageState.existFileState) {
                                Successful(:final v) => v
                                    ? const Icon(Icons.file_open, color: Color(0xFF3FE06C),)
                                    : const Icon(Icons.file_download, color: Color(0xFF3FE06C),),
                                _ => const CircularProgressIndicator()
                              }
                          ),
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: ElevatedButton(
                              onPressed: () {},
                              style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(Color(0x333FE06C))
                              ),
                              child: const Icon(Icons.print, color: Color(0xFF3FE06C))
                          ),
                        )
                      ],
                    )
                  ]
                );
              }
            )
        ),
      ),
    );
  }
}
