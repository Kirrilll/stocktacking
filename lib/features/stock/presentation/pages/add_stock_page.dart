import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/core/presentation/app_bar/build_app_bar.dart';
import 'package:stocktacking/core/presentation/panel/panel.dart';
import 'package:stocktacking/core/riverpod/async_state.dart';
import 'package:stocktacking/core/toast_notifier/domain/toast_notifier.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stock/presentation/notifiers/storage_create_page_notifier.dart';
import 'package:stocktacking/features/stock/presentation/providers/stock_providers.dart';
import 'package:stocktacking/features/stock/presentation/widget/storage_search.dart';

class AddStockPage extends ConsumerStatefulWidget {
  const AddStockPage({super.key});

  @override
  ConsumerState<AddStockPage> createState() => _AddStockPageState();
}

class _AddStockPageState extends ConsumerState<AddStockPage> {

  final _toastNotifier = const ToastNotifier();
  final _storageTitleController = TextEditingController();
  final _stockAddressController = TextEditingController();
  StorageItem? selectedStorage;

  void onSelectItem(StorageItem? storageItem) {
    setState(() => selectedStorage = storageItem);
  }

  var _isStock = false;

  void toggleStock(bool? value) {
    setState(() => _isStock = !_isStock);
  }

  void onCreate() {
    if(_isStock) {
      ref
          .read(storageAddPageNotifierProvider.notifier)
          .createStock(name: _storageTitleController.text, address: _stockAddressController.text);
    }
    else {
      ref
          .read(storageAddPageNotifierProvider.notifier)
          .createStorage(
            name: _storageTitleController.text,
            stockId: selectedStorage?.mapOrNull(
                stock: (stock) => stock.id,
                storage: (storage) => storage.stockId
            ) ?? -1,
            parentStorageId:   selectedStorage?.mapOrNull(
                storage: (storage) => storage.id
            )
        );
    }
  }

  @override
  void initState() {
    ref.read(storageAddPageNotifierProvider.notifier).setupOnSuccessful(() {
      _storageTitleController.clear();
      _stockAddressController.clear();
      _toastNotifier.showToast(context, message: 'Успешно создано');
      setState(() => selectedStorage = null);
    });
    ref.read(storageAddPageNotifierProvider.notifier).setupOnError((error) {
      _toastNotifier.showToast(context, message: error);
    });
    super.initState();
  }

  @override
  void dispose() {
    _stockAddressController.dispose();
    _storageTitleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'Создание хранилища'),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Panel(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _storageTitleController,
                style: Theme.of(context).textTheme.displayMedium,
                decoration: const InputDecoration(
                    labelText: 'Название'
                ),
              ),
              Row(
                children: [
                  const Text('Это склад'),
                  const SizedBox(width: 14),
                  Checkbox(value: _isStock, onChanged: toggleStock)
                ],
              ),
              const SizedBox(height: 14),
              Builder(builder: (_) {
                if(_isStock) {
                  return TextField(
                  controller: _stockAddressController,
                  style: Theme.of(context).textTheme.displayMedium,
                  decoration: const InputDecoration(
                      labelText: 'Адрес'
                  ),
                );
                }
                return StorageSearch(onSelect: onSelectItem, selectedItem: selectedStorage);
              }),
              const SizedBox(height: 14),
              Builder(
                builder: (context) {
                  final creationState = ref.watch(storageAddPageNotifierProvider);
                  return switch(creationState) {
                    Loading() => const Center(child: CircularProgressIndicator()),
                    _ => ElevatedButton(onPressed: onCreate, child: const Text('Создать'))
                  };
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}
