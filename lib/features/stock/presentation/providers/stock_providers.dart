import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/core/supabase/supabase_provider.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stock/data/data_source/supabase_remote_data_source.dart';
import 'package:stocktacking/features/stock/data/repositories/stock_repository_impl.dart';
import 'package:stocktacking/features/stock/domain/repositories/stock_repository.dart';
import 'package:stocktacking/features/stock/domain/use_cases/search_storage_use_case.dart';
import '../../../credential/domain/entities/credential.dart';
import '../../../credential/presentation/notifiers/credential_notifier.dart';
import '../../data/data_source/stock_remote_data_source.dart';
import '../../domain/entities/storage.dart';

part 'stock_providers.g.dart';


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
Future<List<StorageItem>> getStorages(GetStoragesRef ref, {
  String? search,
  String? storagePath
}) async {
  final credential = ref.watch(credentialNotifierProvider);
  if(credential is! Authorised) throw const UnauthorisedFailure();
  if(storagePath == null &&( search?.isEmpty ?? false)) return await ref.read(getStocksProvider.future);
  final searchPath = storagePath;
  return (await ref.watch(stockRepositoryProvider).getStoragesBySearch(searchPath ?? '', credential.profile?.orgId ?? -1))
      .match(
          (l) => throw l,
          (r) => r
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


