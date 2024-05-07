import 'package:stocktacking/features/credential/data/dtos/credential_dto.dart';
import 'package:stocktacking/features/credential/domain/entities/credential.dart';
import 'package:stocktacking/features/credential/domain/entities/role.dart';

class CredentialAdapter {

  const CredentialAdapter();

  //worker, stockkeeper
  Credential fromDto(CredentialDto credentialDto) => Credential.authorised(
      credentialDto.accessToken,
      credentialDto.role == 'stockkeeper' ? Role.storekeeper : Role.worker
  );
}