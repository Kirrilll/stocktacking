import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/features/stuff/data/dtos/stuff_keeping_report_dto.dart';

import '../../../../core/utils/failure.dart';

abstract class RemoteStuffKeepingReportDataSource {
  Future<Either<IFailure, StuffKeepingReportDto>> takeStuff({
    required bool isBroken,
    required int stuffId,
    String? comment,
  });

  Future<Either<IFailure, StuffKeepingReportDto>> putStuff({
    required bool isBroken,
    required int stuffId,
    required int storageId,
    String? comment,
  });
}