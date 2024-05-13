import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/credential/domain/entities/credential.dart';

abstract class CredentialRepository {
  Future<Either<IFailure, Credential>> login(String phone, String password);
  Future<void> logout();
  Future<Either<IFailure, Credential>> restore(String refreshToken);
  Future<Either<IFailure, String>> changePassword(String password);
}