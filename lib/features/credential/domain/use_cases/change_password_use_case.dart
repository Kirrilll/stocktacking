import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/core/utils/use_case_base.dart';
import 'package:stocktacking/features/credential/domain/entities/credential.dart';

class ChangePasswordUseCase implements UseCase<Future<Either<IFailure, Credential>>, String> {
  @override
  Future<Either<IFailure, Credential>> execute(String newPassword) {
    // TODO: implement execute
    throw UnimplementedError();
  }

}