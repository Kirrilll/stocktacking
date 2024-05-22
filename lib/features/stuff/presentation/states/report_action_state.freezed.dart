// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_action_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReportActionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int stuffId) take,
    required TResult Function(int reportId) put,
    required TResult Function(int reportId, int prevUserId) retake,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int stuffId)? take,
    TResult? Function(int reportId)? put,
    TResult? Function(int reportId, int prevUserId)? retake,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int stuffId)? take,
    TResult Function(int reportId)? put,
    TResult Function(int reportId, int prevUserId)? retake,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Take value) take,
    required TResult Function(Put value) put,
    required TResult Function(Retake value) retake,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Take value)? take,
    TResult? Function(Put value)? put,
    TResult? Function(Retake value)? retake,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Take value)? take,
    TResult Function(Put value)? put,
    TResult Function(Retake value)? retake,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportActionStateCopyWith<$Res> {
  factory $ReportActionStateCopyWith(
          ReportActionState value, $Res Function(ReportActionState) then) =
      _$ReportActionStateCopyWithImpl<$Res, ReportActionState>;
}

/// @nodoc
class _$ReportActionStateCopyWithImpl<$Res, $Val extends ReportActionState>
    implements $ReportActionStateCopyWith<$Res> {
  _$ReportActionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TakeImplCopyWith<$Res> {
  factory _$$TakeImplCopyWith(
          _$TakeImpl value, $Res Function(_$TakeImpl) then) =
      __$$TakeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stuffId});
}

/// @nodoc
class __$$TakeImplCopyWithImpl<$Res>
    extends _$ReportActionStateCopyWithImpl<$Res, _$TakeImpl>
    implements _$$TakeImplCopyWith<$Res> {
  __$$TakeImplCopyWithImpl(_$TakeImpl _value, $Res Function(_$TakeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stuffId = null,
  }) {
    return _then(_$TakeImpl(
      null == stuffId
          ? _value.stuffId
          : stuffId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TakeImpl implements Take {
  _$TakeImpl(this.stuffId);

  @override
  final int stuffId;

  @override
  String toString() {
    return 'ReportActionState.take(stuffId: $stuffId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TakeImpl &&
            (identical(other.stuffId, stuffId) || other.stuffId == stuffId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stuffId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TakeImplCopyWith<_$TakeImpl> get copyWith =>
      __$$TakeImplCopyWithImpl<_$TakeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int stuffId) take,
    required TResult Function(int reportId) put,
    required TResult Function(int reportId, int prevUserId) retake,
  }) {
    return take(stuffId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int stuffId)? take,
    TResult? Function(int reportId)? put,
    TResult? Function(int reportId, int prevUserId)? retake,
  }) {
    return take?.call(stuffId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int stuffId)? take,
    TResult Function(int reportId)? put,
    TResult Function(int reportId, int prevUserId)? retake,
    required TResult orElse(),
  }) {
    if (take != null) {
      return take(stuffId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Take value) take,
    required TResult Function(Put value) put,
    required TResult Function(Retake value) retake,
  }) {
    return take(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Take value)? take,
    TResult? Function(Put value)? put,
    TResult? Function(Retake value)? retake,
  }) {
    return take?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Take value)? take,
    TResult Function(Put value)? put,
    TResult Function(Retake value)? retake,
    required TResult orElse(),
  }) {
    if (take != null) {
      return take(this);
    }
    return orElse();
  }
}

abstract class Take implements ReportActionState {
  factory Take(final int stuffId) = _$TakeImpl;

  int get stuffId;
  @JsonKey(ignore: true)
  _$$TakeImplCopyWith<_$TakeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PutImplCopyWith<$Res> {
  factory _$$PutImplCopyWith(_$PutImpl value, $Res Function(_$PutImpl) then) =
      __$$PutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int reportId});
}

/// @nodoc
class __$$PutImplCopyWithImpl<$Res>
    extends _$ReportActionStateCopyWithImpl<$Res, _$PutImpl>
    implements _$$PutImplCopyWith<$Res> {
  __$$PutImplCopyWithImpl(_$PutImpl _value, $Res Function(_$PutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportId = null,
  }) {
    return _then(_$PutImpl(
      null == reportId
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PutImpl implements Put {
  _$PutImpl(this.reportId);

  @override
  final int reportId;

  @override
  String toString() {
    return 'ReportActionState.put(reportId: $reportId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PutImpl &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reportId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PutImplCopyWith<_$PutImpl> get copyWith =>
      __$$PutImplCopyWithImpl<_$PutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int stuffId) take,
    required TResult Function(int reportId) put,
    required TResult Function(int reportId, int prevUserId) retake,
  }) {
    return put(reportId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int stuffId)? take,
    TResult? Function(int reportId)? put,
    TResult? Function(int reportId, int prevUserId)? retake,
  }) {
    return put?.call(reportId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int stuffId)? take,
    TResult Function(int reportId)? put,
    TResult Function(int reportId, int prevUserId)? retake,
    required TResult orElse(),
  }) {
    if (put != null) {
      return put(reportId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Take value) take,
    required TResult Function(Put value) put,
    required TResult Function(Retake value) retake,
  }) {
    return put(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Take value)? take,
    TResult? Function(Put value)? put,
    TResult? Function(Retake value)? retake,
  }) {
    return put?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Take value)? take,
    TResult Function(Put value)? put,
    TResult Function(Retake value)? retake,
    required TResult orElse(),
  }) {
    if (put != null) {
      return put(this);
    }
    return orElse();
  }
}

abstract class Put implements ReportActionState {
  factory Put(final int reportId) = _$PutImpl;

  int get reportId;
  @JsonKey(ignore: true)
  _$$PutImplCopyWith<_$PutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RetakeImplCopyWith<$Res> {
  factory _$$RetakeImplCopyWith(
          _$RetakeImpl value, $Res Function(_$RetakeImpl) then) =
      __$$RetakeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int reportId, int prevUserId});
}

/// @nodoc
class __$$RetakeImplCopyWithImpl<$Res>
    extends _$ReportActionStateCopyWithImpl<$Res, _$RetakeImpl>
    implements _$$RetakeImplCopyWith<$Res> {
  __$$RetakeImplCopyWithImpl(
      _$RetakeImpl _value, $Res Function(_$RetakeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportId = null,
    Object? prevUserId = null,
  }) {
    return _then(_$RetakeImpl(
      null == reportId
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as int,
      null == prevUserId
          ? _value.prevUserId
          : prevUserId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RetakeImpl implements Retake {
  _$RetakeImpl(this.reportId, this.prevUserId);

  @override
  final int reportId;
  @override
  final int prevUserId;

  @override
  String toString() {
    return 'ReportActionState.retake(reportId: $reportId, prevUserId: $prevUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetakeImpl &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
            (identical(other.prevUserId, prevUserId) ||
                other.prevUserId == prevUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reportId, prevUserId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RetakeImplCopyWith<_$RetakeImpl> get copyWith =>
      __$$RetakeImplCopyWithImpl<_$RetakeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int stuffId) take,
    required TResult Function(int reportId) put,
    required TResult Function(int reportId, int prevUserId) retake,
  }) {
    return retake(reportId, prevUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int stuffId)? take,
    TResult? Function(int reportId)? put,
    TResult? Function(int reportId, int prevUserId)? retake,
  }) {
    return retake?.call(reportId, prevUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int stuffId)? take,
    TResult Function(int reportId)? put,
    TResult Function(int reportId, int prevUserId)? retake,
    required TResult orElse(),
  }) {
    if (retake != null) {
      return retake(reportId, prevUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Take value) take,
    required TResult Function(Put value) put,
    required TResult Function(Retake value) retake,
  }) {
    return retake(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Take value)? take,
    TResult? Function(Put value)? put,
    TResult? Function(Retake value)? retake,
  }) {
    return retake?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Take value)? take,
    TResult Function(Put value)? put,
    TResult Function(Retake value)? retake,
    required TResult orElse(),
  }) {
    if (retake != null) {
      return retake(this);
    }
    return orElse();
  }
}

abstract class Retake implements ReportActionState {
  factory Retake(final int reportId, final int prevUserId) = _$RetakeImpl;

  int get reportId;
  int get prevUserId;
  @JsonKey(ignore: true)
  _$$RetakeImplCopyWith<_$RetakeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
