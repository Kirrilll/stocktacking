/*
* Сделать takingRepos - обрабатывать "взятия"
* Сделать stuffRepo - получать stuff по id
* У данного use_case будет в конструкторе 3 repository (using_stuff, stuff, stufftaking)
* */
import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/core/utils/use_case_base.dart';
import 'package:stocktacking/features/stuff/domain/repositories/stuff_keeping_report_repository.dart';

class TakeStuffUseCase implements UseCase<Future<Either<IFailure, void>>, (int, bool, String?)> {

  final StuffKeepingReportRepository stuffKeepingReportRepository;

  const TakeStuffUseCase(this.stuffKeepingReportRepository);

  @override
  Future<Either<IFailure, void>> execute((int, bool, String?) stuffParams) {
    final (stuffId, isBroken, comment) = stuffParams;
    return stuffKeepingReportRepository.takeStuff(stuffId: stuffId, isBroken: isBroken, comment: comment);
  }

}