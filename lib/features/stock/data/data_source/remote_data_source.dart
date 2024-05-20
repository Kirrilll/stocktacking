import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stock/data/dtos/storage_dto.dart';
import 'package:stocktacking/features/stuff/data/dtos/stuff_dto.dart';

abstract class RemoteDataSource {
  Future<Either<IFailure, List<StockDto>>> getOrgStocks();
  Future<Either<IFailure, List<StorageItemDto>>> searchStorage(String search);
  Future<Either<IFailure, StorageDto>> createStorage({
    required String name,
    required int parentStorageId,
    required int stockId
  });
  Future<Either<IFailure, StockDto>> createStock({
    required String title,
    required String address
  });
}