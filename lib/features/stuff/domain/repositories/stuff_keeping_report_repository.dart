import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stock/data/dtos/storage_dto.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff_keeping_report.dart';

abstract class StuffKeepingReportRepository {
  Future<Either<IFailure, List<StuffKeepingReport>>> getReportsByStuffId(int stuffId);
  Future<Either<IFailure, StuffKeepingReport>> createReport({
    required int stuffId,
    required int userId,
    required bool isBroken,
    String? comment
  });

  Future<Either<IFailure, StuffKeepingReport>> endStuffReport({
    required int reportId,
    required bool isBroken,
    required int userId,
    StorageItem? item,
    String? comment
  });

  Future<Either<IFailure, StuffKeepingReport?>> getFirstUnfinishedReport( int stuffId);
}