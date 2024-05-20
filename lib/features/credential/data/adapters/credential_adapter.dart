import 'package:flutter/cupertino.dart';
import 'package:stocktacking/features/credential/data/dtos/credential_dto.dart';
import 'package:stocktacking/features/credential/domain/entities/credential.dart';
import 'package:stocktacking/features/credential/domain/entities/profile.dart';
import 'package:stocktacking/features/credential/domain/entities/role.dart';

class CredentialAdapter {

  const CredentialAdapter();

  //worker, stockkeeper
  Credential fromDto(CredentialDto credentialDto) {
  return Credential.authorised(
      credentialDto.accessToken,
      credentialDto.isKeeper ? Role.storekeeper : Role.worker,
      Profile(orgId: credentialDto.profileDto.orgId, id: credentialDto.profileDto.id, name: credentialDto.profileDto.name)
  );}
}