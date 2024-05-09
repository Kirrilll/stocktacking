import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff_keeping_report.dart';

abstract class StuffKeepingReportRepository {
  Future<Either<IFailure, List<StuffKeepingReport>>> getReportsByStuffId(int stuffId);
  Future<Either<IFailure, StuffKeepingReport>> takeStuff({
    required int stuffId,
    required bool isBroken,
    String? comment
  });

  Future<Either<IFailure, StuffKeepingReport>> putStuff({
    required int stuffId,
    required bool isBroken,
    required int storageId,
    String? comment
  });
}