import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/features/stuff/data/dtos/stuff_keeping_report_dto.dart';

import '../../../../core/utils/failure.dart';

abstract class RemoteStuffKeepingReportDataSource {
  Future<Either<IFailure, StuffKeepingReportDto>> createStuffReport({
    required bool isBroken,
    required int stuffId,
    required int userId,
    String? comment,
  });

  Future<Either<IFailure, StuffKeepingReportDto>> endReport({
    required bool isBroken,
    required int userId,
    int? storageId,
    required int reportId,
    int? stockId,
    String? comment,
  });

  Future<Either<IFailure, List<StuffKeepingReportDto>>> getStuffReports(int stuffId);

  Future<Either<IFailure, StuffKeepingReportDto?>> getFirstUnfinishedReport(int stuffId);
}