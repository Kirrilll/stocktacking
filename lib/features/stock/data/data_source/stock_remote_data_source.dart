import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stock/data/dtos/storage_dto.dart';

abstract class StockRemoteDataSource {
  Future<Either<IFailure, List<StockDto>>> getOrgStocks(int ordId);
  Future<Either<IFailure, List<StorageItemDto>>> searchStorage(String search);
  Future<Either<IFailure, StorageDto>> createStorage({
    required String name,
    required int? parentStorageId,
    required int stockId
  });
  Future<Either<IFailure, StockDto>> createStock({
    required int orgId,
    required String title,
    required String address,
  });
  Future<Either<IFailure, List<StorageDto>>> getStorageOfStorage({
    required int? parentStorageId,
    required int stockId,
    required int orgId
  });
}