// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CredentialDtoImpl _$$CredentialDtoImplFromJson(Map<String, dynamic> json) =>
    _$CredentialDtoImpl(
      accessToken: json['accessToken'] as String,
      isKeeper: json['isKeeper'] as bool,
      profileDto:
          ProfileDto.fromJson(json['profileDto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CredentialDtoImplToJson(_$CredentialDtoImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'isKeeper': instance.isKeeper,
      'profileDto': instance.profileDto,
    };
