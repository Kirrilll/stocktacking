import 'package:fpdart/src/either.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/credential/data/adapters/credential_adapter.dart';
import 'package:stocktacking/features/credential/data/data_sources/remote_credential_data_source.dart';
import 'package:stocktacking/features/credential/domain/entities/credential.dart';
import 'package:stocktacking/features/credential/domain/repositories/credential_repository.dart';

class CredentialRepositoryImpl implements CredentialRepository {

  final RemoteCredentialDataSource remoteCredentialDataSource;
  static const _credentialAdapter = CredentialAdapter();

  const CredentialRepositoryImpl({required this.remoteCredentialDataSource});

  @override
  Future<Either<IFailure, Credential>> login(String phone) async {
    return (await remoteCredentialDataSource.login(phone)).map(_credentialAdapter.fromDto);
  }

  @override
  Future<void> logout() {
    return remoteCredentialDataSource.logout();
  }

  @override
  Future<Either<IFailure, Credential>> restore(String refreshToken) {
    // TODO: implement restore
    throw UnimplementedError();
  }

}