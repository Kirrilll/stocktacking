

import 'package:flutter/cupertino.dart';
import 'package:fpdart/src/either.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/credential/data/data_sources/remote_credential_data_source.dart';
import 'package:stocktacking/features/credential/data/dtos/credential_dto.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseRemoteDataSource implements RemoteCredentialDataSource {

  final SupabaseClient client;

  const SupabaseRemoteDataSource(this.client);

  @override
  Future<Either<IFailure, String>> changePassword(String password) {
    // TODO: implement changePassword
    throw UnimplementedError();
  }

  @override
  Future<Either<IFailure, CredentialDto>> login(String phone, String password) async {
      final res =(await client
        .from('users')
        .select().eq('phone', phone)
        .eq('password', password).single())
          .map((key, value) => MapEntry(key, value.toString()));
      if(res.isEmpty) return const Left(NotFoundFailure(message: 'Такого пользователя не существует'));
      return Right(CredentialDto.fromJson(res));
  }

  @override
  Future<void> logout() async {
    return ;
  }

  @override
  Future<CredentialDto> restore(String refreshToken) {
    // TODO: implement restore
    throw UnimplementedError();
  }

}