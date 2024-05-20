import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/features/credential/domain/entities/credential.dart';
import 'package:stocktacking/features/credential/presentation/notifiers/credential_notifier.dart';
import 'package:stocktacking/features/stock/presentation/providers/stock_providers.dart';
import '../../domain/entities/storage.dart';

part 'stock_notifier.g.dart';

@Riverpod(keepAlive: true)
class StockNotifier extends _$StockNotifier {
  @override
  Future<List<Stock>> build() async {
    final credential = ref.watch(credentialNotifierProvider);
    return switch(credential) {
      Authorised(:final accessToken, :final profile) =>  (await ref
          .read(stockRepositoryProvider)
          .getOrgStocks(credential.profile?.orgId ?? -1))
          .match((l) => throw l, (r) => r),
      _ => []
    };
  }

  addStock(Stock stock) {
    state = state.mapOrNull(data: (dataState) => AsyncData([...dataState.value, stock])) ?? state;
  }
}