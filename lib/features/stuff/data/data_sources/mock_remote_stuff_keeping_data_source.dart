import 'package:fpdart/src/either.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stuff/data/data_sources/remote_stuff_keeping_report_data_source.dart';
import 'package:stocktacking/features/stuff/data/dtos/stuff_keeping_report_dto.dart';

class MockRemoteStuffKeepingDataSource implements RemoteStuffKeepingReportDataSource {
  @override
  Future<Either<IFailure, StuffKeepingReportDto>> putStuff({required bool isBroken, required int stuffId, required int storageId, String? comment}) {
    // TODO: implement putStuff
    throw UnimplementedError();
  }

  @override
  Future<Either<IFailure, StuffKeepingReportDto>> takeStuff({required bool isBroken, required int stuffId, String? comment}) {
    // TODO: implement takeStuff
    throw UnimplementedError();
  }

}