import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/core/supabase/supabase_provider.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stock/data/data_source/supabase_remote_data_source.dart';
import 'package:stocktacking/features/stock/data/repositories/stock_repository_impl.dart';
import 'package:stocktacking/features/stock/domain/repositories/stock_repository.dart';
import 'package:stocktacking/features/stock/domain/use_cases/search_storage_use_case.dart';
import 'package:stocktacking/features/stock/presentation/states/storages_and_stuff_state.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff.dart';
import 'package:stocktacking/features/stuff/presentation/providers/stuff_providers.dart';
import '../../../credential/domain/entities/credential.dart';
import '../../../credential/presentation/notifiers/credential_notifier.dart';
import '../../data/data_source/stock_remote_data_source.dart';
import '../../domain/entities/storage.dart';

part 'stock_providers.g.dart';

final searchInputProvider = StateProvider<String?>((ref) => null);

@Riverpod(keepAlive: true)
StockRemoteDataSource stockRemoteDataSource(StockRemoteDataSourceRef ref) {
  final supabaseClient = ref.watch(supabaseClientProvider);
  return SupabaseStockRemoteDataSource(supabaseClient);
}

@riverpod
StockRepository stockRepository(StockRepositoryRef ref) {
  final stockDataSource = ref.watch(stockRemoteDataSourceProvider);
  return StockRepositoryImpl(stockDataSource);
}

@riverpod
Future<List<StorageItem>> searchStorages(SearchStoragesRef ref, {required String search}) async {
  final credential = ref.watch(credentialNotifierProvider);
  final stockRepository = ref.watch(stockRepositoryProvider);
  return switch(credential) {
    Authorised(:final accessToken, :final profile) => (await SearchStorageUseCase(stockRepository)
        .execute((search, profile?.orgId ?? -1)))
        .match((l) => throw l, (r) => r),
    _ => []
  };
}


@riverpod
Future<StoragesAndStuffState> getStorages(GetStoragesRef ref, {
  String? search,
  StorageItem? storageItem
}) async {
  final credential = ref.watch(credentialNotifierProvider);
  if(credential is! Authorised) throw const UnauthorisedFailure();
  debugPrint('SEARCH - $search');
  if(storageItem == null &&( search?.isEmpty ?? true)) {
    final storages = await ref.read(getStocksProvider.future);
    return StoragesAndStuffState(storages: storages, stuffs: []);
  }
  final (storageId, stockId) = switch(storageItem) {
    Storage(:final id, :final stockId) => (id, stockId),
    Stock(:final id) => (null, id),
    _ => (null, null)
  };
  final storageSearchPath = switch(storageItem) {
    Stock(:final title) => title,
    Storage(:final fullName) => fullName,
    _ => null
  };
  final stockRepository = ref.watch(stockRepositoryProvider);
  final searchedStuff = await ref.watch(useSearchStuffProvider.call(search: search, storageId: storageId, stockId: stockId).future);
  final upgradedSearchParam = '$storageSearchPath';
  return (await stockRepository
      .getStoragesBySearch(upgradedSearchParam ?? '', credential.profile?.orgId ?? -1 ))
      .match(
          (l) => throw l,
          (r) {
            debugPrint('SEARCHED STUFF - ${searchedStuff.length} \n SEARCHED STORAGES LENGHT - ${r.length}');
            return StoragesAndStuffState(storages: r, stuffs: searchedStuff);
          }
  );
}

@riverpod
Future<List<Stock>> getStocks(GetStocksRef ref) async {
  final credential = ref.watch(credentialNotifierProvider);
  return switch(credential) {
    Authorised(:final accessToken, :final profile) =>  (await ref
        .read(stockRepositoryProvider)
        .getOrgStocks(credential.profile?.orgId ?? -1))
      .match((l) => throw l, (r) => r),
  _ => []
  };
}

// Future<Stock> useCreateStock()


