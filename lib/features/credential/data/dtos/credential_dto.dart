import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocktacking/features/credential/data/dtos/profile_dto.dart';

part 'credential_dto.freezed.dart';
part 'credential_dto.g.dart';

@freezed
class CredentialDto with _$CredentialDto{
  const factory CredentialDto({
    required String accessToken,
    // required String refreshToken,
    required bool isKeeper,
    required ProfileDto profileDto
  }) = _CredentialDto;

  factory CredentialDto.fromJson(Map<String, String?> json) => CredentialDto(
      accessToken: 'fake_token',
      isKeeper: bool.tryParse(json['is_keeper'] ?? '') ?? false,
      profileDto: ProfileDto(
          id: int.parse(json['id'] ?? '-1'),
          name: json['name'] ?? '',
          orgId: int.parse(json['organization_id'] ?? '-1')
      )
  );
}