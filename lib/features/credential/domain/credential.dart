import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocktacking/features/credential/domain/role.dart';

part 'credential.freezed.dart';

@freezed
sealed class Credential {

  factory Credential.unauthorised() = Unauthoresed;

  factory Credential.authorised(String accessToken, Role role) = Authorised;
}

