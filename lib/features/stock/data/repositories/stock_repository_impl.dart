import 'package:fpdart/src/either.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stock/adapters/stock_adapter.dart';
import 'package:stocktacking/features/stock/data/data_source/stock_remote_data_source.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stock/domain/repositories/stock_repository.dart';

class StockRepositoryImpl implements StockRepository {

  final StockRemoteDataSource stockRemoteDataSource;
  static const _stockAdapter = StockAdapter();
  const StockRepositoryImpl(this.stockRemoteDataSource);

  @override
  Future<Either<IFailure, Stock>> createStock({required int orgId, required String title, required String address}) async {
      return (await stockRemoteDataSource
          .createStock(orgId: orgId, title: title, address: address))
          .map(_stockAdapter.stockFromDto);
  }

  @override
  Future<Either<IFailure, Storage>> createStorage({required String name, required int? parentStorageId, required int stockId}) async {
    return (await stockRemoteDataSource
        .createStorage(name: name, parentStorageId: parentStorageId, stockId: stockId))
        .map(_stockAdapter.storageFromDto);
  }

  @override
  Future<Either<IFailure, List<Stock>>> getOrgStocks(int orgId) async {
    return (await stockRemoteDataSource
        .getOrgStocks(orgId))
        .map((stocks) => stocks
        .map(_stockAdapter.stockFromDto)
        .toList());
  }

  @override
  Future<Either<IFailure, List<StorageItem>>> getStoragesBySearch(String searchValue) {
    // TODO: implement getStoragesBySearch
    throw UnimplementedError();
  }

  @override
  Future<Either<IFailure, List<Storage>>> getStoragesOfStorage({required int? parentStorageId, required int orgId, required int stockId}) {
    // TODO: implement getStoragesOfStorage
    throw UnimplementedError();
  }

}