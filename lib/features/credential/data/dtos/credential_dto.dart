import 'package:freezed_annotation/freezed_annotation.dart';

part 'credential_dto.freezed.dart';
part 'credential_dto.g.dart';

@freezed
class CredentialDto with _$CredentialDto{
  const factory CredentialDto({
    required String accessToken,
    required String refreshToken,
    required String role
  }) = _CredentialDto;

  factory CredentialDto.fromJson(Map<String, Object?> json)
  => _$CredentialDtoFromJson(json);
}