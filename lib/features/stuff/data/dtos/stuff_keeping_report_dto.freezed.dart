// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stuff_keeping_report_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StuffKeepingReportDto {
  int get id => throw _privateConstructorUsedError;
  int get stuffId => throw _privateConstructorUsedError;
  DateTime get takeTime => throw _privateConstructorUsedError;
  UserDto get takeUser => throw _privateConstructorUsedError;
  bool get takeIsBroken => throw _privateConstructorUsedError;
  String? get takeComment => throw _privateConstructorUsedError;
  DateTime? get putTime => throw _privateConstructorUsedError;
  UserDto? get putUser => throw _privateConstructorUsedError;
  bool? get putIsBroken => throw _privateConstructorUsedError;
  StorageItemDto? get putPlace => throw _privateConstructorUsedError;
  String? get putComment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StuffKeepingReportDtoCopyWith<StuffKeepingReportDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StuffKeepingReportDtoCopyWith<$Res> {
  factory $StuffKeepingReportDtoCopyWith(StuffKeepingReportDto value,
          $Res Function(StuffKeepingReportDto) then) =
      _$StuffKeepingReportDtoCopyWithImpl<$Res, StuffKeepingReportDto>;
  @useResult
  $Res call(
      {int id,
      int stuffId,
      DateTime takeTime,
      UserDto takeUser,
      bool takeIsBroken,
      String? takeComment,
      DateTime? putTime,
      UserDto? putUser,
      bool? putIsBroken,
      StorageItemDto? putPlace,
      String? putComment});

  $StorageItemDtoCopyWith<$Res>? get putPlace;
}

/// @nodoc
class _$StuffKeepingReportDtoCopyWithImpl<$Res,
        $Val extends StuffKeepingReportDto>
    implements $StuffKeepingReportDtoCopyWith<$Res> {
  _$StuffKeepingReportDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stuffId = null,
    Object? takeTime = null,
    Object? takeUser = freezed,
    Object? takeIsBroken = null,
    Object? takeComment = freezed,
    Object? putTime = freezed,
    Object? putUser = freezed,
    Object? putIsBroken = freezed,
    Object? putPlace = freezed,
    Object? putComment = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      stuffId: null == stuffId
          ? _value.stuffId
          : stuffId // ignore: cast_nullable_to_non_nullable
              as int,
      takeTime: null == takeTime
          ? _value.takeTime
          : takeTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      takeUser: freezed == takeUser
          ? _value.takeUser
          : takeUser // ignore: cast_nullable_to_non_nullable
              as UserDto,
      takeIsBroken: null == takeIsBroken
          ? _value.takeIsBroken
          : takeIsBroken // ignore: cast_nullable_to_non_nullable
              as bool,
      takeComment: freezed == takeComment
          ? _value.takeComment
          : takeComment // ignore: cast_nullable_to_non_nullable
              as String?,
      putTime: freezed == putTime
          ? _value.putTime
          : putTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      putUser: freezed == putUser
          ? _value.putUser
          : putUser // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      putIsBroken: freezed == putIsBroken
          ? _value.putIsBroken
          : putIsBroken // ignore: cast_nullable_to_non_nullable
              as bool?,
      putPlace: freezed == putPlace
          ? _value.putPlace
          : putPlace // ignore: cast_nullable_to_non_nullable
              as StorageItemDto?,
      putComment: freezed == putComment
          ? _value.putComment
          : putComment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StorageItemDtoCopyWith<$Res>? get putPlace {
    if (_value.putPlace == null) {
      return null;
    }

    return $StorageItemDtoCopyWith<$Res>(_value.putPlace!, (value) {
      return _then(_value.copyWith(putPlace: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StuffKeepingReportDtoImplCopyWith<$Res>
    implements $StuffKeepingReportDtoCopyWith<$Res> {
  factory _$$StuffKeepingReportDtoImplCopyWith(
          _$StuffKeepingReportDtoImpl value,
          $Res Function(_$StuffKeepingReportDtoImpl) then) =
      __$$StuffKeepingReportDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int stuffId,
      DateTime takeTime,
      UserDto takeUser,
      bool takeIsBroken,
      String? takeComment,
      DateTime? putTime,
      UserDto? putUser,
      bool? putIsBroken,
      StorageItemDto? putPlace,
      String? putComment});

  @override
  $StorageItemDtoCopyWith<$Res>? get putPlace;
}

/// @nodoc
class __$$StuffKeepingReportDtoImplCopyWithImpl<$Res>
    extends _$StuffKeepingReportDtoCopyWithImpl<$Res,
        _$StuffKeepingReportDtoImpl>
    implements _$$StuffKeepingReportDtoImplCopyWith<$Res> {
  __$$StuffKeepingReportDtoImplCopyWithImpl(_$StuffKeepingReportDtoImpl _value,
      $Res Function(_$StuffKeepingReportDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stuffId = null,
    Object? takeTime = null,
    Object? takeUser = freezed,
    Object? takeIsBroken = null,
    Object? takeComment = freezed,
    Object? putTime = freezed,
    Object? putUser = freezed,
    Object? putIsBroken = freezed,
    Object? putPlace = freezed,
    Object? putComment = freezed,
  }) {
    return _then(_$StuffKeepingReportDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      stuffId: null == stuffId
          ? _value.stuffId
          : stuffId // ignore: cast_nullable_to_non_nullable
              as int,
      takeTime: null == takeTime
          ? _value.takeTime
          : takeTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      takeUser: freezed == takeUser
          ? _value.takeUser
          : takeUser // ignore: cast_nullable_to_non_nullable
              as UserDto,
      takeIsBroken: null == takeIsBroken
          ? _value.takeIsBroken
          : takeIsBroken // ignore: cast_nullable_to_non_nullable
              as bool,
      takeComment: freezed == takeComment
          ? _value.takeComment
          : takeComment // ignore: cast_nullable_to_non_nullable
              as String?,
      putTime: freezed == putTime
          ? _value.putTime
          : putTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      putUser: freezed == putUser
          ? _value.putUser
          : putUser // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      putIsBroken: freezed == putIsBroken
          ? _value.putIsBroken
          : putIsBroken // ignore: cast_nullable_to_non_nullable
              as bool?,
      putPlace: freezed == putPlace
          ? _value.putPlace
          : putPlace // ignore: cast_nullable_to_non_nullable
              as StorageItemDto?,
      putComment: freezed == putComment
          ? _value.putComment
          : putComment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StuffKeepingReportDtoImpl implements _StuffKeepingReportDto {
  const _$StuffKeepingReportDtoImpl(
      {required this.id,
      required this.stuffId,
      required this.takeTime,
      required this.takeUser,
      required this.takeIsBroken,
      this.takeComment,
      required this.putTime,
      required this.putUser,
      required this.putIsBroken,
      this.putPlace,
      this.putComment});

  @override
  final int id;
  @override
  final int stuffId;
  @override
  final DateTime takeTime;
  @override
  final UserDto takeUser;
  @override
  final bool takeIsBroken;
  @override
  final String? takeComment;
  @override
  final DateTime? putTime;
  @override
  final UserDto? putUser;
  @override
  final bool? putIsBroken;
  @override
  final StorageItemDto? putPlace;
  @override
  final String? putComment;

  @override
  String toString() {
    return 'StuffKeepingReportDto(id: $id, stuffId: $stuffId, takeTime: $takeTime, takeUser: $takeUser, takeIsBroken: $takeIsBroken, takeComment: $takeComment, putTime: $putTime, putUser: $putUser, putIsBroken: $putIsBroken, putPlace: $putPlace, putComment: $putComment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StuffKeepingReportDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stuffId, stuffId) || other.stuffId == stuffId) &&
            (identical(other.takeTime, takeTime) ||
                other.takeTime == takeTime) &&
            const DeepCollectionEquality().equals(other.takeUser, takeUser) &&
            (identical(other.takeIsBroken, takeIsBroken) ||
                other.takeIsBroken == takeIsBroken) &&
            (identical(other.takeComment, takeComment) ||
                other.takeComment == takeComment) &&
            (identical(other.putTime, putTime) || other.putTime == putTime) &&
            const DeepCollectionEquality().equals(other.putUser, putUser) &&
            (identical(other.putIsBroken, putIsBroken) ||
                other.putIsBroken == putIsBroken) &&
            (identical(other.putPlace, putPlace) ||
                other.putPlace == putPlace) &&
            (identical(other.putComment, putComment) ||
                other.putComment == putComment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      stuffId,
      takeTime,
      const DeepCollectionEquality().hash(takeUser),
      takeIsBroken,
      takeComment,
      putTime,
      const DeepCollectionEquality().hash(putUser),
      putIsBroken,
      putPlace,
      putComment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StuffKeepingReportDtoImplCopyWith<_$StuffKeepingReportDtoImpl>
      get copyWith => __$$StuffKeepingReportDtoImplCopyWithImpl<
          _$StuffKeepingReportDtoImpl>(this, _$identity);
}

abstract class _StuffKeepingReportDto implements StuffKeepingReportDto {
  const factory _StuffKeepingReportDto(
      {required final int id,
      required final int stuffId,
      required final DateTime takeTime,
      required final UserDto takeUser,
      required final bool takeIsBroken,
      final String? takeComment,
      required final DateTime? putTime,
      required final UserDto? putUser,
      required final bool? putIsBroken,
      final StorageItemDto? putPlace,
      final String? putComment}) = _$StuffKeepingReportDtoImpl;

  @override
  int get id;
  @override
  int get stuffId;
  @override
  DateTime get takeTime;
  @override
  UserDto get takeUser;
  @override
  bool get takeIsBroken;
  @override
  String? get takeComment;
  @override
  DateTime? get putTime;
  @override
  UserDto? get putUser;
  @override
  bool? get putIsBroken;
  @override
  StorageItemDto? get putPlace;
  @override
  String? get putComment;
  @override
  @JsonKey(ignore: true)
  _$$StuffKeepingReportDtoImplCopyWith<_$StuffKeepingReportDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
