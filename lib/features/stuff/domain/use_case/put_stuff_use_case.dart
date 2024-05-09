import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/core/utils/use_case_base.dart';
import 'package:stocktacking/features/stuff/domain/repositories/stuff_keeping_report_repository.dart';

class PutStuffParams {
  final int stuffId;
  final int storageId;
  final bool isBroken;
  final String? comment;

  const PutStuffParams({
    required this.stuffId,
    required this.storageId,
    required this.isBroken,
    this.comment,
  });

}

class PutStuffUseCase implements UseCase<Future<Either<IFailure, bool>>, PutStuffParams> {

  final StuffKeepingReportRepository stuffKeepingReportRepository;

  const PutStuffUseCase(this.stuffKeepingReportRepository);

  @override
  Future<Either<IFailure, bool>> execute(PutStuffParams args) async {
    return (await stuffKeepingReportRepository.putStuff(
        stuffId: args.stuffId,
        isBroken: args.isBroken,
        storageId: args.storageId,
        comment: args.comment
    )).map((a) => true);
  }

}