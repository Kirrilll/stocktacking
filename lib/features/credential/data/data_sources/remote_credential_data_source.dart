import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/credential/data/dtos/credential_dto.dart';

abstract class RemoteCredentialDataSource {
  Future<Either<IFailure, CredentialDto>> login(String phone, String password);
  Future<Either<IFailure, String>> changePassword(String password);
  Future<void> logout();
  Future<CredentialDto> restore(String refreshToken);
}