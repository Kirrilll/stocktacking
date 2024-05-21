import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stocktacking/core/presentation/app_bar/build_app_bar.dart';
import 'package:stocktacking/core/presentation/panel/panel.dart';
import 'package:stocktacking/core/riverpod/async_state.dart';
import 'package:stocktacking/core/routing/constants/routing_names.dart';
import 'package:stocktacking/core/toast_notifier/domain/toast_notifier.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stock/presentation/widget/storage_search.dart';
import 'package:stocktacking/features/stuff/presentation/notifiers/add_stuff_page_notifier.dart';
import 'package:stocktacking/features/stuff/presentation/widgets/stuff_image.dart';

import '../../../../core/presentation/dashed_painter/dashed_path_painter.dart';

class StuffAddPage extends ConsumerStatefulWidget {
  const StuffAddPage({super.key});

  @override
  ConsumerState<StuffAddPage> createState() => _StuffAddPageState();
}

class _StuffAddPageState extends ConsumerState<StuffAddPage> {
  final _toastNotifier = const ToastNotifier();
  final _stuffTitleController = TextEditingController();
  final _countController = TextEditingController(text: 1.toString());
  StorageItem? _selectedStorage;

  final ImagePicker _picker = ImagePicker();

  XFile? image;

  void selectStorage(StorageItem? item) => setState(() => _selectedStorage = item);

  Future<void> _loadAsPhoto() async {
    final galleryRes = await _picker.pickImage(source: ImageSource.camera);
    if(galleryRes == null) return;
    setState(() => image = galleryRes);
  }

  Future<void> _loadAsGallery() async {
    final galleryRes = await _picker.pickImage(source: ImageSource.gallery);
    if(galleryRes == null) return;
    setState(() => image = galleryRes);
  }

  Future<void> onCreate() async {

    if(image != null) {
      ref
          .read(addStuffPageNotifierProvider.notifier)
          .createStuff(name: _stuffTitleController.text, image: image!, count: int.tryParse(_countController.text) ?? 1, storage: _selectedStorage);
    }
  }

  @override
  void initState() {
    ref.read(addStuffPageNotifierProvider.notifier)
        .setupOnCreateResult(
          onError: (message) => _toastNotifier.showToast(context, message: message, isError: true),
          onSuccessful: (v) {
            context.replaceNamed(stuffCreatedPhysicalIdentifier, extra: v);
          }
    );
    super.initState();
  }

  @override
  void dispose() {
    _stuffTitleController.dispose();
    _countController.dispose();
    super.dispose();
  }

  void Function() buildOnLoadImage(BuildContext context) => () => {
    showDialog(
        context: context,
        builder: (dialogContext) => Dialog(
          backgroundColor: Colors.white,
          insetPadding: const EdgeInsets.all(14),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(14)),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(14),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Выберите тип фото'),
                const SizedBox(height: 14),
                ElevatedButton(
                    onPressed: () =>_loadAsPhoto().then((_) => Navigator.of(dialogContext).pop()),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Камера'),
                        Icon(Icons.camera_alt_rounded)
                      ],
                    ),
                ),
                const SizedBox(height: 14),
                ElevatedButton(
                  onPressed: () => _loadAsGallery().then((_) => Navigator.of(dialogContext).pop()),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Галлерея'),
                      Icon(Icons.storage)
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    )
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'Создание предмета'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Panel(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: _stuffTitleController,
                    style: Theme.of(context).textTheme.displayMedium,
                    decoration: const InputDecoration(
                      labelText: 'Название'
                    ),
                  ),
                  const SizedBox(height: 14),
                  InkWell(
                    onTap: buildOnLoadImage(context),
                    child: SizedBox(
                      height: 300,
                      width: 300,
                      child: Stack(
                          fit: StackFit.expand,
                          alignment: Alignment.center,
                          children: [
                            if(image != null) FutureBuilder(
                                future: image?.readAsBytes(),
                                builder: (_, snapshot) => switch(snapshot.connectionState) {
                                  ConnectionState.done => StuffImage.fromBytes(snapshot.requireData),
                                  ConnectionState.waiting => const Center(child: CircularProgressIndicator()),
                                  _ => const SizedBox()
                                }
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                              child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text('Загрузить фотографию',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium
                                          ?.copyWith(
                                          color: Theme.of(context)
                                              .brightness ==
                                              Brightness.dark
                                              ? Colors.white
                                              : const Color(
                                              0xFF000926)))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: CustomPaint(
                                foregroundPainter: DashedPathPainter(
                                    pathBuilder: (size) => Path()
                                      ..addRect(Rect.fromLTWH(0, 0,
                                          size.width, size.height)),
                                    pathColor: Theme.of(context)
                                        .colorScheme
                                        .onSecondary),
                              ),
                            ),

                          ]),
                    ),
                  ),
                  const SizedBox(height: 14),
                  StorageSearch(onSelect: selectStorage, selectedItem: _selectedStorage),
                  const SizedBox(height: 14),
                  TextField(
                    controller: _countController,
                    style: Theme.of(context).textTheme.displayMedium,
                    decoration: const InputDecoration(
                        labelText: 'Количество'
                    ),
                  ),
                  const SizedBox(height: 14),
                  Builder(
                    builder: (_)  {
                      final creationState = ref.watch(addStuffPageNotifierProvider);
                      return switch(creationState) {
                        Loading() => const Center(child: CircularProgressIndicator()),
                        _ =>  ElevatedButton(
                            onPressed: onCreate,
                            child: const Text('Продолжить')
                        )
                      };
                    }
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}
