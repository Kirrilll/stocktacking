import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocktacking/features/credential/domain/entities/profile.dart';
import 'package:stocktacking/features/credential/domain/entities/role.dart';

part 'credential.freezed.dart';

@freezed
sealed class Credential {

  Credential._();

  factory Credential.unauthorised() = Unauthoresed;
  factory Credential.authorised(String accessToken, Role role, Profile? profile) = Authorised;

  bool get isAuthorised => this is Authorised;
}

