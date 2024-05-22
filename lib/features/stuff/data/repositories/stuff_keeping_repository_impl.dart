import 'package:fpdart/src/either.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stock/data/dtos/storage_dto.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stuff/adapters/stuff_report_adapter.dart';
import 'package:stocktacking/features/stuff/data/data_sources/remote_stuff_keeping_report_data_source.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff_keeping_report.dart';
import 'package:stocktacking/features/stuff/domain/repositories/stuff_keeping_report_repository.dart';

class StuffKeepingRepositoryImpl implements StuffKeepingReportRepository {

  final RemoteStuffKeepingReportDataSource remoteStuffKeepingReportDataSource;
  static final _reportsAdapter = StuffReportAdapter();
  const StuffKeepingRepositoryImpl(this.remoteStuffKeepingReportDataSource);

  @override
  Future<Either<IFailure, List<StuffKeepingReport>>> getReportsByStuffId(int stuffId) async {
    return (await remoteStuffKeepingReportDataSource
        .getStuffReports(stuffId))
        .map((a) => a
          .map(_reportsAdapter.fromDto)
          .toList());
  }

  @override
  Future<Either<IFailure, StuffKeepingReport>> createReport({required int stuffId, required int userId, required bool isBroken, String? comment}) async {
    return (await remoteStuffKeepingReportDataSource
        .createStuffReport(isBroken: isBroken, stuffId: stuffId, userId: userId, comment: comment))
        .map(_reportsAdapter.fromDto);
  }

  @override
  Future<Either<IFailure, StuffKeepingReport?>> getFirstUnfinishedReport(int stuffId) async {
    return (await remoteStuffKeepingReportDataSource
        .getFirstUnfinishedReport(stuffId))
        .map((report) => report != null
          ? _reportsAdapter.fromDto(report)
          : null
    );
  }

  @override
  Future<Either<IFailure, StuffKeepingReport>> endStuffReport({
    required int reportId,
    required bool isBroken,
    required int userId,
    StorageItem? item,
    String? comment
  }) async {
    final (storageId, stockId) = item != null
        ? switch(item) {
            Stock(:final id) => (null, id),
            Storage(:final id, :final stockId) => (id, stockId),
            _ => (null, null)
          }
        : (null, null);

    return (await remoteStuffKeepingReportDataSource.endReport(
        isBroken: isBroken,
        userId: userId,
        storageId: storageId,
        reportId: reportId,
        stockId: stockId,
        comment: comment
    )).map(_reportsAdapter.fromDto);
  }


}