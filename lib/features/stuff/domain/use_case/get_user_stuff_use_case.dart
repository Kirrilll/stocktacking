import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/core/utils/use_case_base.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff.dart';
import 'package:stocktacking/features/stuff/domain/repositories/stuff_repository.dart';

class GetUserStuffUseCase implements UseCase<Future<Either<IFailure, List<Stuff>>>, void > {

  final StuffRepository stuffRepository;

  const GetUserStuffUseCase(this.stuffRepository);

  @override
  Future<Either<IFailure, List<Stuff>>> execute(void args) async {
    return stuffRepository.getUserKeepingStuff();
  }
}