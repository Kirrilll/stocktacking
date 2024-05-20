import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/core/supabase/supabase_provider.dart';
import 'package:stocktacking/features/stock/data/data_source/supabase_remote_data_source.dart';
import 'package:stocktacking/features/stock/data/repositories/stock_repository_impl.dart';
import 'package:stocktacking/features/stock/domain/repositories/stock_repository.dart';
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


