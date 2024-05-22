/*
* Сделать takingRepos - обрабатывать "взятия"
* Сделать stuffRepo - получать stuff по id
* У данного use_case будет в конструкторе 3 repository (using_stuff, stuff, stufftaking)
* */
import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/core/utils/use_case_base.dart';
import 'package:stocktacking/features/stuff/domain/repositories/stuff_keeping_report_repository.dart';
import 'package:stocktacking/features/stuff/domain/repositories/stuff_repository.dart';


class TakeStuffArgs {
  final int userId;
  final int stuffId;
  final bool isBroken;
  final String? comment;

  const TakeStuffArgs({
    required this.userId,
    required this.stuffId,
    required this.isBroken,
    this.comment,
  });
}

class TakeStuffUseCase implements UseCase<Future<Either<IFailure, (int, String)>>, TakeStuffArgs> {

  final StuffKeepingReportRepository stuffKeepingReportRepository;
  final StuffRepository stuffRepository;

  const TakeStuffUseCase(this.stuffKeepingReportRepository, this.stuffRepository);

  @override
  Future<Either<IFailure, (int, String)>> execute(TakeStuffArgs stuffParams) async {
    final res = await stuffKeepingReportRepository.createReport(
         stuffId: stuffParams.stuffId,
         userId: stuffParams.userId,
         isBroken: stuffParams.isBroken,
         comment: stuffParams.comment
     );

    if(res.isLeft()) return Left(res.getLeft().getOrElse(() => const AppFailure(message: 'Что-то пошло не так')));
    return (await stuffRepository
        .updateStuff(id: stuffParams.stuffId, storageId: null, stockId: null, userId: stuffParams.userId, comment: stuffParams.comment, isBroken: stuffParams.isBroken))
        .map((a) => (a.id, a.title)
    );
  }

}