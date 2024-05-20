import 'package:flutter/cupertino.dart';
import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/core/utils/use_case_base.dart';
import 'package:stocktacking/features/credential/domain/entities/credential.dart';
import 'package:stocktacking/features/credential/domain/repositories/credential_repository.dart';

class LoginUseCase implements UseCase<Future<Either<IFailure, Credential>>, (String, String)> {

  final CredentialRepository credentialRepository;

  const LoginUseCase({required this.credentialRepository});

  @override
  Future<Either<IFailure, Credential>> execute((String, String) loginParams) async {
    final (phone, password) = loginParams;
    final cutPhone = phone.replaceAll(RegExp(r'\s+|[()]'), '');
    return await credentialRepository.login(cutPhone, password);
  }

}