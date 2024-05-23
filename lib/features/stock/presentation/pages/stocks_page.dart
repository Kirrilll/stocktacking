import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/app/routing_provider.dart';
import 'package:stocktacking/core/presentation/app_bar/build_app_bar.dart';
import 'package:stocktacking/core/presentation/panel/panel.dart';
import 'package:stocktacking/core/routing/constants/routing_names.dart';
import 'package:stocktacking/core/routing/constants/routing_params.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/credential/presentation/widgets/logout_button.dart';
import 'package:stocktacking/features/stock/presentation/providers/stock_providers.dart';
import 'package:stocktacking/features/stock/presentation/widget/stock_card.dart';

import '../../../credential/presentation/providers/credentials_providers.dart';
import '../../domain/entities/storage.dart';

class StocksPage extends ConsumerStatefulWidget {
  const StocksPage({super.key});

  @override
  ConsumerState<StocksPage> createState() => _StocksPageState();
}

class _StocksPageState extends ConsumerState<StocksPage> {
  StorageItem? _selectedStorage;

  void Function() _buildOnStorageTap(StorageItem storageItem) => () {
    setState(() => _selectedStorage = storageItem);
  };

  void Function() _buildOnStuffTap(int stuffId) => () {
    ref
        .read(locationServiceProvider)
        .goNamed(name: stuffDetail, params: {stuffIdParam: stuffId.toString()});
  };

  void _onDeleteStoragePath() {
    setState(() => _selectedStorage = null);
  }


  void Function() _buildOnStuffCreateTap(WidgetRef ref) => () => ref
      .read(locationServiceProvider)
      .goNamed(name: stuffCreate);

  void Function() _buildOnStockCreateTap(WidgetRef ref) => () => ref
      .read(locationServiceProvider)
      .goNamed(name: stockCreate);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'Имущество', actions: [const LogoutButton()]),
      bottomNavigationBar: Consumer(
          builder: (_, ref, __) => ref.watch(isStockKeeperProvider)
              ? Panel(
                  child: Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                              onPressed: _buildOnStuffCreateTap(ref),
                              child: const FittedBox(child: Text('Добавить предмет'))
                          )
                      ),
                      const SizedBox(width: 7),
                      Expanded(
                          child: ElevatedButton(
                            onPressed: _buildOnStockCreateTap(ref),
                            child: const FittedBox(child: Text('Создать склад')),
                          )
                      )
                    ],
                ),
              )
              : const SizedBox()
      ),
      body: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            children: [
              SizedBox(
                height: 56,
                child: TextField(
                  onChanged: (value) => ref.read(searchInputProvider.notifier).state = value,
                  textAlignVertical: TextAlignVertical.center,
                  style: Theme.of(context).textTheme.displayMedium,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: Material(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                      child: InkWell(
                          borderRadius: BorderRadius.circular(50),
                          onTap: () => context.goNamed(stockFilter),
                          child: const Icon(Icons.filter_list_outlined)
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide(color: Colors.transparent, width: 2)
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14),
              if(_selectedStorage != null) Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_selectedStorage?.fullName ?? 'Организация', textAlign: TextAlign.start,),
                  const SizedBox(width: 14),
                  Material(
                    borderRadius: BorderRadius.circular(50),
                    child: InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: _onDeleteStoragePath,
                        child: const Icon(Icons.clear)
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Expanded(
                  child: Builder(
                    builder: (context) {
                      final searchValue = ref.watch(searchInputProvider);
                      final stocksState = ref.watch(getStoragesProvider.call(search: searchValue, storageItem: _selectedStorage));
                      return switch(stocksState) {
                        AsyncData(:final value) => RefreshIndicator(
                          onRefresh: () => ref.refresh(getStocksProvider.future),
                          child: ListView.separated(
                              itemBuilder: (_, index) {
                                final isStuff = index >= value.storages.length;
                                if(isStuff) {
                                  return  StorageItemCard.fromStuff(
                                    stuff: value.stuffs[index - value.storages.length],
                                    onTap: _buildOnStuffTap(value.stuffs[index - value.storages.length].id)
                                   );
                                }
                                return StorageItemCard.fromStorage(item: value.storages[index], onTap: _buildOnStorageTap(value.storages[index]));
                              } ,
                              separatorBuilder: (_, __) => const SizedBox(height: 7),
                              itemCount: value.storages.length + value.stuffs.length
                          ),
                        ),
                        AsyncError(:final error) => const Center(
                          child: Text('Ошибка'),
                        ),
                        AsyncLoading() => Center(child: CircularProgressIndicator(color: Theme.of(context).colorScheme.primary,)),
                        _ => const SizedBox()
                      };
                    }
                  )
              )
            ],
          ),
      ),
    );
  }
}
