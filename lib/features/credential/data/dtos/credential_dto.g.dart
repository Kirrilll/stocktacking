// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CredentialDtoImpl _$$CredentialDtoImplFromJson(Map<String, dynamic> json) =>
    _$CredentialDtoImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$CredentialDtoImplToJson(_$CredentialDtoImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'role': instance.role,
    };
