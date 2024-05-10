// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stuff_keeping_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StuffKeepingReport {
  int get id => throw _privateConstructorUsedError;
  int get stuffId => throw _privateConstructorUsedError;
  StuffKeepingInfo get takeInfo => throw _privateConstructorUsedError;
  StuffKeepingInfo? get putInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StuffKeepingReportCopyWith<StuffKeepingReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StuffKeepingReportCopyWith<$Res> {
  factory $StuffKeepingReportCopyWith(
          StuffKeepingReport value, $Res Function(StuffKeepingReport) then) =
      _$StuffKeepingReportCopyWithImpl<$Res, StuffKeepingReport>;
  @useResult
  $Res call(
      {int id,
      int stuffId,
      StuffKeepingInfo takeInfo,
      StuffKeepingInfo? putInfo});

  $StuffKeepingInfoCopyWith<$Res> get takeInfo;
  $StuffKeepingInfoCopyWith<$Res>? get putInfo;
}

/// @nodoc
class _$StuffKeepingReportCopyWithImpl<$Res, $Val extends StuffKeepingReport>
    implements $StuffKeepingReportCopyWith<$Res> {
  _$StuffKeepingReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stuffId = null,
    Object? takeInfo = null,
    Object? putInfo = freezed,
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
      takeInfo: null == takeInfo
          ? _value.takeInfo
          : takeInfo // ignore: cast_nullable_to_non_nullable
              as StuffKeepingInfo,
      putInfo: freezed == putInfo
          ? _value.putInfo
          : putInfo // ignore: cast_nullable_to_non_nullable
              as StuffKeepingInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StuffKeepingInfoCopyWith<$Res> get takeInfo {
    return $StuffKeepingInfoCopyWith<$Res>(_value.takeInfo, (value) {
      return _then(_value.copyWith(takeInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StuffKeepingInfoCopyWith<$Res>? get putInfo {
    if (_value.putInfo == null) {
      return null;
    }

    return $StuffKeepingInfoCopyWith<$Res>(_value.putInfo!, (value) {
      return _then(_value.copyWith(putInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StuffKeepingReportImplCopyWith<$Res>
    implements $StuffKeepingReportCopyWith<$Res> {
  factory _$$StuffKeepingReportImplCopyWith(_$StuffKeepingReportImpl value,
          $Res Function(_$StuffKeepingReportImpl) then) =
      __$$StuffKeepingReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int stuffId,
      StuffKeepingInfo takeInfo,
      StuffKeepingInfo? putInfo});

  @override
  $StuffKeepingInfoCopyWith<$Res> get takeInfo;
  @override
  $StuffKeepingInfoCopyWith<$Res>? get putInfo;
}

/// @nodoc
class __$$StuffKeepingReportImplCopyWithImpl<$Res>
    extends _$StuffKeepingReportCopyWithImpl<$Res, _$StuffKeepingReportImpl>
    implements _$$StuffKeepingReportImplCopyWith<$Res> {
  __$$StuffKeepingReportImplCopyWithImpl(_$StuffKeepingReportImpl _value,
      $Res Function(_$StuffKeepingReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stuffId = null,
    Object? takeInfo = null,
    Object? putInfo = freezed,
  }) {
    return _then(_$StuffKeepingReportImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      stuffId: null == stuffId
          ? _value.stuffId
          : stuffId // ignore: cast_nullable_to_non_nullable
              as int,
      takeInfo: null == takeInfo
          ? _value.takeInfo
          : takeInfo // ignore: cast_nullable_to_non_nullable
              as StuffKeepingInfo,
      putInfo: freezed == putInfo
          ? _value.putInfo
          : putInfo // ignore: cast_nullable_to_non_nullable
              as StuffKeepingInfo?,
    ));
  }
}

/// @nodoc

class _$StuffKeepingReportImpl extends _StuffKeepingReport {
  const _$StuffKeepingReportImpl(
      {required this.id,
      required this.stuffId,
      required this.takeInfo,
      this.putInfo})
      : super._();

  @override
  final int id;
  @override
  final int stuffId;
  @override
  final StuffKeepingInfo takeInfo;
  @override
  final StuffKeepingInfo? putInfo;

  @override
  String toString() {
    return 'StuffKeepingReport(id: $id, stuffId: $stuffId, takeInfo: $takeInfo, putInfo: $putInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StuffKeepingReportImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stuffId, stuffId) || other.stuffId == stuffId) &&
            (identical(other.takeInfo, takeInfo) ||
                other.takeInfo == takeInfo) &&
            (identical(other.putInfo, putInfo) || other.putInfo == putInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, stuffId, takeInfo, putInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StuffKeepingReportImplCopyWith<_$StuffKeepingReportImpl> get copyWith =>
      __$$StuffKeepingReportImplCopyWithImpl<_$StuffKeepingReportImpl>(
          this, _$identity);
}

abstract class _StuffKeepingReport extends StuffKeepingReport {
  const factory _StuffKeepingReport(
      {required final int id,
      required final int stuffId,
      required final StuffKeepingInfo takeInfo,
      final StuffKeepingInfo? putInfo}) = _$StuffKeepingReportImpl;
  const _StuffKeepingReport._() : super._();

  @override
  int get id;
  @override
  int get stuffId;
  @override
  StuffKeepingInfo get takeInfo;
  @override
  StuffKeepingInfo? get putInfo;
  @override
  @JsonKey(ignore: true)
  _$$StuffKeepingReportImplCopyWith<_$StuffKeepingReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
