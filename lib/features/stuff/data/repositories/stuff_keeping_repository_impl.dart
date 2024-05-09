import 'package:fpdart/src/either.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stuff/data/data_sources/remote_stuff_keeping_report_data_source.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff_keeping_report.dart';
import 'package:stocktacking/features/stuff/domain/repositories/stuff_keeping_report_repository.dart';

class StuffKeepingRepositoryImpl implements StuffKeepingReportRepository {

  final RemoteStuffKeepingReportDataSource remoteStuffKeepingReportDataSource;

  const StuffKeepingRepositoryImpl(this.remoteStuffKeepingReportDataSource);

  @override
  Future<Either<IFailure, List<StuffKeepingReport>>> getReportsByStuffId(int stuffId) {
    // TODO: implement getReportsByStuffId
    throw UnimplementedError();
  }

  @override
  Future<Either<IFailure, StuffKeepingReport>> putStuff({required int stuffId, required bool isBroken, required int storageId, String? comment}) {
    // TODO: implement putStuff
    throw UnimplementedError();
  }

  @override
  Future<Either<IFailure, StuffKeepingReport>> takeStuff({required int stuffId, required bool isBroken, String? comment}) {
    // TODO: implement takeStuff
    throw UnimplementedError();
  }

}