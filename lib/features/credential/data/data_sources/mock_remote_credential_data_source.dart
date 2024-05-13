import 'package:fpdart/fpdart.dart';
import 'package:fpdart/src/either.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/credential/data/data_sources/remote_credential_data_source.dart';
import 'package:stocktacking/features/credential/data/dtos/credential_dto.dart';
import 'package:stocktacking/features/credential/data/dtos/profile_dto.dart';

class MockRemoteCredentialDataSource implements RemoteCredentialDataSource {

  final Map<String, CredentialDto> _mockedAccount = {
    '8(999) 888 77 66': const CredentialDto(accessToken: '', refreshToken: '', role: 'worker', profileDto: ProfileDto(id: 1, name: 'Кирилл')),
    '8(999) 888 77 55': const CredentialDto(accessToken: '', refreshToken: '', role: 'stockkeeper', profileDto: ProfileDto(id: 2, name: 'Федор Алексеевич')),
  };

  @override
  Future<Either<IFailure, CredentialDto>> login(String phone, String password) async {
    return await TaskEither(() => Future.delayed(
        const Duration(milliseconds: 500),
            () => Either.fromNullable(_mockedAccount[phone],
                () => const NotFoundFailure(message: 'Пользователя с таким номером не сущетсвует')))
    )
        .run();
  }

  @override
  Future<void> logout() async {
    return;
  }

  @override
  Future<CredentialDto> restore(String refreshToken) async {
    return _mockedAccount.values.first;
  }

  @override
  Future<Either<IFailure, String>> changePassword(String password) {
    return Future.delayed(const Duration(milliseconds: 500), () => const Right(''));
  }

}