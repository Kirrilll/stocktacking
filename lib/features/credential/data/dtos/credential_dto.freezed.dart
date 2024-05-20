// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credential_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CredentialDto _$CredentialDtoFromJson(Map<String, dynamic> json) {
  return _CredentialDto.fromJson(json);
}

/// @nodoc
mixin _$CredentialDto {
  String get accessToken =>
      throw _privateConstructorUsedError; // required String refreshToken,
  bool get isKeeper => throw _privateConstructorUsedError;
  ProfileDto get profileDto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CredentialDtoCopyWith<CredentialDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialDtoCopyWith<$Res> {
  factory $CredentialDtoCopyWith(
          CredentialDto value, $Res Function(CredentialDto) then) =
      _$CredentialDtoCopyWithImpl<$Res, CredentialDto>;
  @useResult
  $Res call({String accessToken, bool isKeeper, ProfileDto profileDto});

  $ProfileDtoCopyWith<$Res> get profileDto;
}

/// @nodoc
class _$CredentialDtoCopyWithImpl<$Res, $Val extends CredentialDto>
    implements $CredentialDtoCopyWith<$Res> {
  _$CredentialDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? isKeeper = null,
    Object? profileDto = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      isKeeper: null == isKeeper
          ? _value.isKeeper
          : isKeeper // ignore: cast_nullable_to_non_nullable
              as bool,
      profileDto: null == profileDto
          ? _value.profileDto
          : profileDto // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileDtoCopyWith<$Res> get profileDto {
    return $ProfileDtoCopyWith<$Res>(_value.profileDto, (value) {
      return _then(_value.copyWith(profileDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CredentialDtoImplCopyWith<$Res>
    implements $CredentialDtoCopyWith<$Res> {
  factory _$$CredentialDtoImplCopyWith(
          _$CredentialDtoImpl value, $Res Function(_$CredentialDtoImpl) then) =
      __$$CredentialDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, bool isKeeper, ProfileDto profileDto});

  @override
  $ProfileDtoCopyWith<$Res> get profileDto;
}

/// @nodoc
class __$$CredentialDtoImplCopyWithImpl<$Res>
    extends _$CredentialDtoCopyWithImpl<$Res, _$CredentialDtoImpl>
    implements _$$CredentialDtoImplCopyWith<$Res> {
  __$$CredentialDtoImplCopyWithImpl(
      _$CredentialDtoImpl _value, $Res Function(_$CredentialDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? isKeeper = null,
    Object? profileDto = null,
  }) {
    return _then(_$CredentialDtoImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      isKeeper: null == isKeeper
          ? _value.isKeeper
          : isKeeper // ignore: cast_nullable_to_non_nullable
              as bool,
      profileDto: null == profileDto
          ? _value.profileDto
          : profileDto // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CredentialDtoImpl implements _CredentialDto {
  const _$CredentialDtoImpl(
      {required this.accessToken,
      required this.isKeeper,
      required this.profileDto});

  factory _$CredentialDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CredentialDtoImplFromJson(json);

  @override
  final String accessToken;
// required String refreshToken,
  @override
  final bool isKeeper;
  @override
  final ProfileDto profileDto;

  @override
  String toString() {
    return 'CredentialDto(accessToken: $accessToken, isKeeper: $isKeeper, profileDto: $profileDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CredentialDtoImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.isKeeper, isKeeper) ||
                other.isKeeper == isKeeper) &&
            (identical(other.profileDto, profileDto) ||
                other.profileDto == profileDto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, isKeeper, profileDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CredentialDtoImplCopyWith<_$CredentialDtoImpl> get copyWith =>
      __$$CredentialDtoImplCopyWithImpl<_$CredentialDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CredentialDtoImplToJson(
      this,
    );
  }
}

abstract class _CredentialDto implements CredentialDto {
  const factory _CredentialDto(
      {required final String accessToken,
      required final bool isKeeper,
      required final ProfileDto profileDto}) = _$CredentialDtoImpl;

  factory _CredentialDto.fromJson(Map<String, dynamic> json) =
      _$CredentialDtoImpl.fromJson;

  @override
  String get accessToken;
  @override // required String refreshToken,
  bool get isKeeper;
  @override
  ProfileDto get profileDto;
  @override
  @JsonKey(ignore: true)
  _$$CredentialDtoImplCopyWith<_$CredentialDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
