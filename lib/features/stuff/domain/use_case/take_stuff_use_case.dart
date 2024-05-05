/*
* Сделать takingRepos - обрабатывать "взятия"
* Сделать stuffRepo - получать stuff по id
* У данного use_case будет в конструкторе 3 repository (using_stuff, stuff, stufftaking)
* */

import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/core/utils/use_case_base.dart';

class TakeStuffUseCase implements UseCase<Future<Either<IFailure, void>>, int> {
  @override
  Future<Either<IFailure, void>> execute(int stuffId) {
    // TODO: implement execute
    throw UnimplementedError();
  }

}