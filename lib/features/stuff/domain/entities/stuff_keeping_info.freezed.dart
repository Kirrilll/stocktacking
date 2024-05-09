// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stuff_keeping_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StuffKeepingInfo {
  DateTime get time => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  bool get isBroken => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StuffKeepingInfoCopyWith<StuffKeepingInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StuffKeepingInfoCopyWith<$Res> {
  factory $StuffKeepingInfoCopyWith(
          StuffKeepingInfo value, $Res Function(StuffKeepingInfo) then) =
      _$StuffKeepingInfoCopyWithImpl<$Res, StuffKeepingInfo>;
  @useResult
  $Res call({DateTime time, int userId, bool isBroken, String? comment});
}

/// @nodoc
class _$StuffKeepingInfoCopyWithImpl<$Res, $Val extends StuffKeepingInfo>
    implements $StuffKeepingInfoCopyWith<$Res> {
  _$StuffKeepingInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? userId = null,
    Object? isBroken = null,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      isBroken: null == isBroken
          ? _value.isBroken
          : isBroken // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StuffKeepingInfoImplCopyWith<$Res>
    implements $StuffKeepingInfoCopyWith<$Res> {
  factory _$$StuffKeepingInfoImplCopyWith(_$StuffKeepingInfoImpl value,
          $Res Function(_$StuffKeepingInfoImpl) then) =
      __$$StuffKeepingInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime time, int userId, bool isBroken, String? comment});
}

/// @nodoc
class __$$StuffKeepingInfoImplCopyWithImpl<$Res>
    extends _$StuffKeepingInfoCopyWithImpl<$Res, _$StuffKeepingInfoImpl>
    implements _$$StuffKeepingInfoImplCopyWith<$Res> {
  __$$StuffKeepingInfoImplCopyWithImpl(_$StuffKeepingInfoImpl _value,
      $Res Function(_$StuffKeepingInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? userId = null,
    Object? isBroken = null,
    Object? comment = freezed,
  }) {
    return _then(_$StuffKeepingInfoImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      isBroken: null == isBroken
          ? _value.isBroken
          : isBroken // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StuffKeepingInfoImpl implements _StuffKeepingInfo {
  const _$StuffKeepingInfoImpl(
      {required this.time,
      required this.userId,
      required this.isBroken,
      this.comment});

  @override
  final DateTime time;
  @override
  final int userId;
  @override
  final bool isBroken;
  @override
  final String? comment;

  @override
  String toString() {
    return 'StuffKeepingInfo(time: $time, userId: $userId, isBroken: $isBroken, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StuffKeepingInfoImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isBroken, isBroken) ||
                other.isBroken == isBroken) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time, userId, isBroken, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StuffKeepingInfoImplCopyWith<_$StuffKeepingInfoImpl> get copyWith =>
      __$$StuffKeepingInfoImplCopyWithImpl<_$StuffKeepingInfoImpl>(
          this, _$identity);
}

abstract class _StuffKeepingInfo implements StuffKeepingInfo {
  const factory _StuffKeepingInfo(
      {required final DateTime time,
      required final int userId,
      required final bool isBroken,
      final String? comment}) = _$StuffKeepingInfoImpl;

  @override
  DateTime get time;
  @override
  int get userId;
  @override
  bool get isBroken;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$StuffKeepingInfoImplCopyWith<_$StuffKeepingInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
