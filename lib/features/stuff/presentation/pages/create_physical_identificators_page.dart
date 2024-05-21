import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:open_file/open_file.dart';
import 'dart:ui' as ui;

import 'package:permission_handler/permission_handler.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:stocktacking/core/presentation/action_button/action_button.dart';

import '../../../../core/presentation/app_bar/build_app_bar.dart';
import '../../../../core/presentation/panel/panel.dart';

class CreatePhysicalIdentificatorPage extends StatefulWidget {
  const CreatePhysicalIdentificatorPage({super.key, required this.createdStuffs});

  final List<(int, String)> createdStuffs;

  @override
  State<CreatePhysicalIdentificatorPage> createState() => _CreatePhysicalIdentificatorPageState();
}

class _CreatePhysicalIdentificatorPageState extends State<CreatePhysicalIdentificatorPage> {
  final _qrKey = GlobalKey();

  var isDownloaded = false;

  String get fileName => 'multi-qr-code-${widget
      .createdStuffs
      .map((e) => '${e.$1}')
      .reduce((acc, value) => '$acc-$value')}.png';

  Future<void> downloadAsPng() async{
    final boundary = _qrKey.currentContext?.findRenderObject();
    if(boundary is! RenderRepaintBoundary) return;
    ui.Image image = await boundary.toImage();
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    if(byteData == null) return;
    Uint8List pngBytes = byteData.buffer.asUint8List();
    File imgFile  = File('/storage/emulated/0/Download/$fileName');
    await imgFile.writeAsBytes(pngBytes);
    setState(() => isDownloaded = true);
  }

  Future<void> launchFile() async {
    File imgFile  = File('/storage/emulated/0/Download/$fileName');
    await Permission.manageExternalStorage
        .onGrantedCallback(() async => await OpenFile.open(imgFile.path))
        .request();
  }

  void onTapLoad() async {
    if(isDownloaded) {
      await launchFile();
    }
    else {
      await downloadAsPng();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context: context,
        title: 'Идентификатор',
        actions:[
          ActionButton(
              onTap: onTapLoad,
              icon: isDownloaded ? Icons.file_open : Icons.download_rounded
          )
        ]
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Panel(
              child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          RepaintBoundary(
                            key: _qrKey,
                            child: Column(
                              children: widget.createdStuffs.map((entry) =>  Panel(
                                child: Column(
                                  children: [
                                    Center(
                                      child: QrImageView(
                                        data: entry.$1.toString(),
                                        backgroundColor: Colors.white,
                                        size: 300.0,
                                        semanticsLabel: entry.$2,
                                      ),
                                    ),
                                    Text(
                                        entry.$2,
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                            fontWeight: FontWeight.w800,
                                            color: Colors.black
                                        )
                                    ),
                                  ],
                                ),
                              )).toList() ,
                            ),
                          ),
                        ]
              )
          ),
        ),
      ),
    );
  }
}
