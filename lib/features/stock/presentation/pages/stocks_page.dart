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

  final _searchController = TextEditingController();

  void _onTapClear() => _searchController.clear();

  // static final _stocks = [
  //   Stock('Склад 3', 'Южная. д 55', (5.0, 1.3)),
  //   Stock('Офис', 'Южная. д 55', (5.0, 1.3)),
  //   Stock('Офис 2', 'Южная. д 55', (5.0, 1.3)),
  // ];

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
                  controller: _searchController,
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
                    suffix: Material(
                      borderRadius: BorderRadius.circular(50),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(50),
                          onTap: _onTapClear,
                          child: const Icon(Icons.clear)
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
              Expanded(
                  child: Builder(
                    builder: (context) {
                      final stocksState = ref.watch(getStocksProvider);
                      return switch(stocksState) {
                        AsyncData(:final value) => RefreshIndicator(
                          onRefresh: () => ref.refresh(getStocksProvider.future),
                          child: ListView.separated(
                              itemBuilder: (_, index) => StockCard(stock: value[index], onTap: () {},),
                              separatorBuilder: (_, __) => const SizedBox(height: 7),
                              itemCount: value.length
                          ),
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
