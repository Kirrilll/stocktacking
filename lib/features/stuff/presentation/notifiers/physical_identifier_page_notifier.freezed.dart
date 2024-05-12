// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'physical_identifier_page_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PhysicalIdentifierPageState {
  AsyncState<Stuff> get getStuffState => throw _privateConstructorUsedError;
  AsyncState<bool> get existFileState => throw _privateConstructorUsedError;
  AsyncState<bool> get downloadState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhysicalIdentifierPageStateCopyWith<PhysicalIdentifierPageState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhysicalIdentifierPageStateCopyWith<$Res> {
  factory $PhysicalIdentifierPageStateCopyWith(
          PhysicalIdentifierPageState value,
          $Res Function(PhysicalIdentifierPageState) then) =
      _$PhysicalIdentifierPageStateCopyWithImpl<$Res,
          PhysicalIdentifierPageState>;
  @useResult
  $Res call(
      {AsyncState<Stuff> getStuffState,
      AsyncState<bool> existFileState,
      AsyncState<bool> downloadState});

  $AsyncStateCopyWith<Stuff, $Res> get getStuffState;
  $AsyncStateCopyWith<bool, $Res> get existFileState;
  $AsyncStateCopyWith<bool, $Res> get downloadState;
}

/// @nodoc
class _$PhysicalIdentifierPageStateCopyWithImpl<$Res,
        $Val extends PhysicalIdentifierPageState>
    implements $PhysicalIdentifierPageStateCopyWith<$Res> {
  _$PhysicalIdentifierPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getStuffState = null,
    Object? existFileState = null,
    Object? downloadState = null,
  }) {
    return _then(_value.copyWith(
      getStuffState: null == getStuffState
          ? _value.getStuffState
          : getStuffState // ignore: cast_nullable_to_non_nullable
              as AsyncState<Stuff>,
      existFileState: null == existFileState
          ? _value.existFileState
          : existFileState // ignore: cast_nullable_to_non_nullable
              as AsyncState<bool>,
      downloadState: null == downloadState
          ? _value.downloadState
          : downloadState // ignore: cast_nullable_to_non_nullable
              as AsyncState<bool>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AsyncStateCopyWith<Stuff, $Res> get getStuffState {
    return $AsyncStateCopyWith<Stuff, $Res>(_value.getStuffState, (value) {
      return _then(_value.copyWith(getStuffState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AsyncStateCopyWith<bool, $Res> get existFileState {
    return $AsyncStateCopyWith<bool, $Res>(_value.existFileState, (value) {
      return _then(_value.copyWith(existFileState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AsyncStateCopyWith<bool, $Res> get downloadState {
    return $AsyncStateCopyWith<bool, $Res>(_value.downloadState, (value) {
      return _then(_value.copyWith(downloadState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PhysicalIdentifierPageStateImplCopyWith<$Res>
    implements $PhysicalIdentifierPageStateCopyWith<$Res> {
  factory _$$PhysicalIdentifierPageStateImplCopyWith(
          _$PhysicalIdentifierPageStateImpl value,
          $Res Function(_$PhysicalIdentifierPageStateImpl) then) =
      __$$PhysicalIdentifierPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncState<Stuff> getStuffState,
      AsyncState<bool> existFileState,
      AsyncState<bool> downloadState});

  @override
  $AsyncStateCopyWith<Stuff, $Res> get getStuffState;
  @override
  $AsyncStateCopyWith<bool, $Res> get existFileState;
  @override
  $AsyncStateCopyWith<bool, $Res> get downloadState;
}

/// @nodoc
class __$$PhysicalIdentifierPageStateImplCopyWithImpl<$Res>
    extends _$PhysicalIdentifierPageStateCopyWithImpl<$Res,
        _$PhysicalIdentifierPageStateImpl>
    implements _$$PhysicalIdentifierPageStateImplCopyWith<$Res> {
  __$$PhysicalIdentifierPageStateImplCopyWithImpl(
      _$PhysicalIdentifierPageStateImpl _value,
      $Res Function(_$PhysicalIdentifierPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getStuffState = null,
    Object? existFileState = null,
    Object? downloadState = null,
  }) {
    return _then(_$PhysicalIdentifierPageStateImpl(
      getStuffState: null == getStuffState
          ? _value.getStuffState
          : getStuffState // ignore: cast_nullable_to_non_nullable
              as AsyncState<Stuff>,
      existFileState: null == existFileState
          ? _value.existFileState
          : existFileState // ignore: cast_nullable_to_non_nullable
              as AsyncState<bool>,
      downloadState: null == downloadState
          ? _value.downloadState
          : downloadState // ignore: cast_nullable_to_non_nullable
              as AsyncState<bool>,
    ));
  }
}

/// @nodoc

class _$PhysicalIdentifierPageStateImpl extends _PhysicalIdentifierPageState {
  _$PhysicalIdentifierPageStateImpl(
      {required this.getStuffState,
      required this.existFileState,
      required this.downloadState})
      : super._();

  @override
  final AsyncState<Stuff> getStuffState;
  @override
  final AsyncState<bool> existFileState;
  @override
  final AsyncState<bool> downloadState;

  @override
  String toString() {
    return 'PhysicalIdentifierPageState(getStuffState: $getStuffState, existFileState: $existFileState, downloadState: $downloadState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhysicalIdentifierPageStateImpl &&
            (identical(other.getStuffState, getStuffState) ||
                other.getStuffState == getStuffState) &&
            (identical(other.existFileState, existFileState) ||
                other.existFileState == existFileState) &&
            (identical(other.downloadState, downloadState) ||
                other.downloadState == downloadState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, getStuffState, existFileState, downloadState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhysicalIdentifierPageStateImplCopyWith<_$PhysicalIdentifierPageStateImpl>
      get copyWith => __$$PhysicalIdentifierPageStateImplCopyWithImpl<
          _$PhysicalIdentifierPageStateImpl>(this, _$identity);
}

abstract class _PhysicalIdentifierPageState
    extends PhysicalIdentifierPageState {
  factory _PhysicalIdentifierPageState(
          {required final AsyncState<Stuff> getStuffState,
          required final AsyncState<bool> existFileState,
          required final AsyncState<bool> downloadState}) =
      _$PhysicalIdentifierPageStateImpl;
  _PhysicalIdentifierPageState._() : super._();

  @override
  AsyncState<Stuff> get getStuffState;
  @override
  AsyncState<bool> get existFileState;
  @override
  AsyncState<bool> get downloadState;
  @override
  @JsonKey(ignore: true)
  _$$PhysicalIdentifierPageStateImplCopyWith<_$PhysicalIdentifierPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
