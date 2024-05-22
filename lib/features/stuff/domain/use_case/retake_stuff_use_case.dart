import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/core/utils/use_case_base.dart';
import 'package:stocktacking/features/stuff/domain/repositories/stuff_keeping_report_repository.dart';
import 'package:stocktacking/features/stuff/domain/repositories/stuff_repository.dart';

class RetakeStuffArgs {
  final int reportId;
  final int prevUserId;
  final int userId;
  final int stuffId;
  final bool isBroken;
  final String? comment;

  const RetakeStuffArgs({
    required this.reportId,
    required this.prevUserId,
    required this.userId,
    required this.stuffId,
    this.isBroken = false,
    this.comment,
  });
}

class RetakeStuffUseCase implements UseCase<Future<Either<IFailure, (int, String)>>, RetakeStuffArgs> {

  final StuffRepository stuffRepository;
  final StuffKeepingReportRepository stuffKeepingReportRepository;

  const RetakeStuffUseCase(this.stuffKeepingReportRepository, this.stuffRepository);

  @override
  Future<Either<IFailure, (int, String)>> execute(RetakeStuffArgs args) async {
    await stuffKeepingReportRepository.endStuffReport(
        reportId: args.reportId,
        isBroken: args.isBroken,
        userId: args.userId,
        comment: args.comment
    );
    await stuffKeepingReportRepository.createReport(stuffId: args.stuffId, userId: args.userId, isBroken: args.isBroken, comment: args.comment);
    return (await stuffRepository
        .updateStuff(id: args.stuffId, storageId: null, stockId: null, userId: args.userId, isBroken: args.isBroken, comment: args.comment))
        .map((a) => (a.id, a.title));
  }

}