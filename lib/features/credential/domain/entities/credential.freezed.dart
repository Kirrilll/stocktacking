// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credential.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Credential {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorised,
    required TResult Function(String accessToken, Role role) authorised,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorised,
    TResult? Function(String accessToken, Role role)? authorised,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorised,
    TResult Function(String accessToken, Role role)? authorised,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthoresed value) unauthorised,
    required TResult Function(Authorised value) authorised,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthoresed value)? unauthorised,
    TResult? Function(Authorised value)? authorised,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthoresed value)? unauthorised,
    TResult Function(Authorised value)? authorised,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialCopyWith<$Res> {
  factory $CredentialCopyWith(
          Credential value, $Res Function(Credential) then) =
      _$CredentialCopyWithImpl<$Res, Credential>;
}

/// @nodoc
class _$CredentialCopyWithImpl<$Res, $Val extends Credential>
    implements $CredentialCopyWith<$Res> {
  _$CredentialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnauthoresedImplCopyWith<$Res> {
  factory _$$UnauthoresedImplCopyWith(
          _$UnauthoresedImpl value, $Res Function(_$UnauthoresedImpl) then) =
      __$$UnauthoresedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthoresedImplCopyWithImpl<$Res>
    extends _$CredentialCopyWithImpl<$Res, _$UnauthoresedImpl>
    implements _$$UnauthoresedImplCopyWith<$Res> {
  __$$UnauthoresedImplCopyWithImpl(
      _$UnauthoresedImpl _value, $Res Function(_$UnauthoresedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthoresedImpl extends Unauthoresed {
  _$UnauthoresedImpl() : super._();

  @override
  String toString() {
    return 'Credential.unauthorised()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthoresedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorised,
    required TResult Function(String accessToken, Role role) authorised,
  }) {
    return unauthorised();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorised,
    TResult? Function(String accessToken, Role role)? authorised,
  }) {
    return unauthorised?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorised,
    TResult Function(String accessToken, Role role)? authorised,
    required TResult orElse(),
  }) {
    if (unauthorised != null) {
      return unauthorised();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthoresed value) unauthorised,
    required TResult Function(Authorised value) authorised,
  }) {
    return unauthorised(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthoresed value)? unauthorised,
    TResult? Function(Authorised value)? authorised,
  }) {
    return unauthorised?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthoresed value)? unauthorised,
    TResult Function(Authorised value)? authorised,
    required TResult orElse(),
  }) {
    if (unauthorised != null) {
      return unauthorised(this);
    }
    return orElse();
  }
}

abstract class Unauthoresed extends Credential {
  factory Unauthoresed() = _$UnauthoresedImpl;
  Unauthoresed._() : super._();
}

/// @nodoc
abstract class _$$AuthorisedImplCopyWith<$Res> {
  factory _$$AuthorisedImplCopyWith(
          _$AuthorisedImpl value, $Res Function(_$AuthorisedImpl) then) =
      __$$AuthorisedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String accessToken, Role role});
}

/// @nodoc
class __$$AuthorisedImplCopyWithImpl<$Res>
    extends _$CredentialCopyWithImpl<$Res, _$AuthorisedImpl>
    implements _$$AuthorisedImplCopyWith<$Res> {
  __$$AuthorisedImplCopyWithImpl(
      _$AuthorisedImpl _value, $Res Function(_$AuthorisedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? role = null,
  }) {
    return _then(_$AuthorisedImpl(
      null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ));
  }
}

/// @nodoc

class _$AuthorisedImpl extends Authorised {
  _$AuthorisedImpl(this.accessToken, this.role) : super._();

  @override
  final String accessToken;
  @override
  final Role role;

  @override
  String toString() {
    return 'Credential.authorised(accessToken: $accessToken, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorisedImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessToken, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorisedImplCopyWith<_$AuthorisedImpl> get copyWith =>
      __$$AuthorisedImplCopyWithImpl<_$AuthorisedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorised,
    required TResult Function(String accessToken, Role role) authorised,
  }) {
    return authorised(accessToken, role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorised,
    TResult? Function(String accessToken, Role role)? authorised,
  }) {
    return authorised?.call(accessToken, role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorised,
    TResult Function(String accessToken, Role role)? authorised,
    required TResult orElse(),
  }) {
    if (authorised != null) {
      return authorised(accessToken, role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthoresed value) unauthorised,
    required TResult Function(Authorised value) authorised,
  }) {
    return authorised(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthoresed value)? unauthorised,
    TResult? Function(Authorised value)? authorised,
  }) {
    return authorised?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthoresed value)? unauthorised,
    TResult Function(Authorised value)? authorised,
    required TResult orElse(),
  }) {
    if (authorised != null) {
      return authorised(this);
    }
    return orElse();
  }
}

abstract class Authorised extends Credential {
  factory Authorised(final String accessToken, final Role role) =
      _$AuthorisedImpl;
  Authorised._() : super._();

  String get accessToken;
  Role get role;
  @JsonKey(ignore: true)
  _$$AuthorisedImplCopyWith<_$AuthorisedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
