import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';

abstract class StockRepository {
  Future<Either<IFailure, List<Stock>>> getOrgStocks(int orgId);
  Future<Either<IFailure, List<StorageItem>>> getStoragesBySearch(String searchValue, int orgId);
  Future<Either<IFailure, Stock>> createStock({
    required int orgId,
    required String title,
    required String address,
  });
  Future<Either<IFailure, Storage>> createStorage({
    required String name,
    required int? parentStorageId,
    required int stockId
  });
  Future<Either<IFailure, List<Storage>>> getStoragesOfStorage({
    required int? parentStorageId,
    required int orgId,
    required int stockId
  });
  Future<Either<IFailure, List<Stock>>> searchStocks(String search, int orgId);
}