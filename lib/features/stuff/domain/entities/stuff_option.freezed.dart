// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stuff_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StuffOption {
  String get code => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Object get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String title, num value) num,
    required TResult Function(String code, String title, List<String> value)
        list,
    required TResult Function(String code, String title, String value) text,
    required TResult Function(String code, String title, bool value) logic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String title, num value)? num,
    TResult? Function(String code, String title, List<String> value)? list,
    TResult? Function(String code, String title, String value)? text,
    TResult? Function(String code, String title, bool value)? logic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String title, num value)? num,
    TResult Function(String code, String title, List<String> value)? list,
    TResult Function(String code, String title, String value)? text,
    TResult Function(String code, String title, bool value)? logic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OptionNum value) num,
    required TResult Function(OptionList value) list,
    required TResult Function(OptionText value) text,
    required TResult Function(OptionBoolean value) logic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OptionNum value)? num,
    TResult? Function(OptionList value)? list,
    TResult? Function(OptionText value)? text,
    TResult? Function(OptionBoolean value)? logic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OptionNum value)? num,
    TResult Function(OptionList value)? list,
    TResult Function(OptionText value)? text,
    TResult Function(OptionBoolean value)? logic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StuffOptionCopyWith<StuffOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StuffOptionCopyWith<$Res> {
  factory $StuffOptionCopyWith(
          StuffOption value, $Res Function(StuffOption) then) =
      _$StuffOptionCopyWithImpl<$Res, StuffOption>;
  @useResult
  $Res call({String code, String title});
}

/// @nodoc
class _$StuffOptionCopyWithImpl<$Res, $Val extends StuffOption>
    implements $StuffOptionCopyWith<$Res> {
  _$StuffOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionNumImplCopyWith<$Res>
    implements $StuffOptionCopyWith<$Res> {
  factory _$$OptionNumImplCopyWith(
          _$OptionNumImpl value, $Res Function(_$OptionNumImpl) then) =
      __$$OptionNumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String title, num value});
}

/// @nodoc
class __$$OptionNumImplCopyWithImpl<$Res>
    extends _$StuffOptionCopyWithImpl<$Res, _$OptionNumImpl>
    implements _$$OptionNumImplCopyWith<$Res> {
  __$$OptionNumImplCopyWithImpl(
      _$OptionNumImpl _value, $Res Function(_$OptionNumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? title = null,
    Object? value = null,
  }) {
    return _then(_$OptionNumImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$OptionNumImpl extends OptionNum {
  _$OptionNumImpl(
      {required this.code, required this.title, required this.value})
      : super._();

  @override
  final String code;
  @override
  final String title;
  @override
  final num value;

  @override
  String toString() {
    return 'StuffOption.num(code: $code, title: $title, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionNumImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, title, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionNumImplCopyWith<_$OptionNumImpl> get copyWith =>
      __$$OptionNumImplCopyWithImpl<_$OptionNumImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String title, num value) num,
    required TResult Function(String code, String title, List<String> value)
        list,
    required TResult Function(String code, String title, String value) text,
    required TResult Function(String code, String title, bool value) logic,
  }) {
    return num(code, title, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String title, num value)? num,
    TResult? Function(String code, String title, List<String> value)? list,
    TResult? Function(String code, String title, String value)? text,
    TResult? Function(String code, String title, bool value)? logic,
  }) {
    return num?.call(code, title, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String title, num value)? num,
    TResult Function(String code, String title, List<String> value)? list,
    TResult Function(String code, String title, String value)? text,
    TResult Function(String code, String title, bool value)? logic,
    required TResult orElse(),
  }) {
    if (num != null) {
      return num(code, title, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OptionNum value) num,
    required TResult Function(OptionList value) list,
    required TResult Function(OptionText value) text,
    required TResult Function(OptionBoolean value) logic,
  }) {
    return num(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OptionNum value)? num,
    TResult? Function(OptionList value)? list,
    TResult? Function(OptionText value)? text,
    TResult? Function(OptionBoolean value)? logic,
  }) {
    return num?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OptionNum value)? num,
    TResult Function(OptionList value)? list,
    TResult Function(OptionText value)? text,
    TResult Function(OptionBoolean value)? logic,
    required TResult orElse(),
  }) {
    if (num != null) {
      return num(this);
    }
    return orElse();
  }
}

abstract class OptionNum extends StuffOption {
  factory OptionNum(
      {required final String code,
      required final String title,
      required final num value}) = _$OptionNumImpl;
  OptionNum._() : super._();

  @override
  String get code;
  @override
  String get title;
  @override
  num get value;
  @override
  @JsonKey(ignore: true)
  _$$OptionNumImplCopyWith<_$OptionNumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OptionListImplCopyWith<$Res>
    implements $StuffOptionCopyWith<$Res> {
  factory _$$OptionListImplCopyWith(
          _$OptionListImpl value, $Res Function(_$OptionListImpl) then) =
      __$$OptionListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String title, List<String> value});
}

/// @nodoc
class __$$OptionListImplCopyWithImpl<$Res>
    extends _$StuffOptionCopyWithImpl<$Res, _$OptionListImpl>
    implements _$$OptionListImplCopyWith<$Res> {
  __$$OptionListImplCopyWithImpl(
      _$OptionListImpl _value, $Res Function(_$OptionListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? title = null,
    Object? value = null,
  }) {
    return _then(_$OptionListImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$OptionListImpl extends OptionList {
  _$OptionListImpl(
      {required this.code,
      required this.title,
      required final List<String> value})
      : _value = value,
        super._();

  @override
  final String code;
  @override
  final String title;
  final List<String> _value;
  @override
  List<String> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @override
  String toString() {
    return 'StuffOption.list(code: $code, title: $title, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionListImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, code, title, const DeepCollectionEquality().hash(_value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionListImplCopyWith<_$OptionListImpl> get copyWith =>
      __$$OptionListImplCopyWithImpl<_$OptionListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String title, num value) num,
    required TResult Function(String code, String title, List<String> value)
        list,
    required TResult Function(String code, String title, String value) text,
    required TResult Function(String code, String title, bool value) logic,
  }) {
    return list(code, title, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String title, num value)? num,
    TResult? Function(String code, String title, List<String> value)? list,
    TResult? Function(String code, String title, String value)? text,
    TResult? Function(String code, String title, bool value)? logic,
  }) {
    return list?.call(code, title, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String title, num value)? num,
    TResult Function(String code, String title, List<String> value)? list,
    TResult Function(String code, String title, String value)? text,
    TResult Function(String code, String title, bool value)? logic,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(code, title, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OptionNum value) num,
    required TResult Function(OptionList value) list,
    required TResult Function(OptionText value) text,
    required TResult Function(OptionBoolean value) logic,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OptionNum value)? num,
    TResult? Function(OptionList value)? list,
    TResult? Function(OptionText value)? text,
    TResult? Function(OptionBoolean value)? logic,
  }) {
    return list?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OptionNum value)? num,
    TResult Function(OptionList value)? list,
    TResult Function(OptionText value)? text,
    TResult Function(OptionBoolean value)? logic,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }
}

abstract class OptionList extends StuffOption {
  factory OptionList(
      {required final String code,
      required final String title,
      required final List<String> value}) = _$OptionListImpl;
  OptionList._() : super._();

  @override
  String get code;
  @override
  String get title;
  @override
  List<String> get value;
  @override
  @JsonKey(ignore: true)
  _$$OptionListImplCopyWith<_$OptionListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OptionTextImplCopyWith<$Res>
    implements $StuffOptionCopyWith<$Res> {
  factory _$$OptionTextImplCopyWith(
          _$OptionTextImpl value, $Res Function(_$OptionTextImpl) then) =
      __$$OptionTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String title, String value});
}

/// @nodoc
class __$$OptionTextImplCopyWithImpl<$Res>
    extends _$StuffOptionCopyWithImpl<$Res, _$OptionTextImpl>
    implements _$$OptionTextImplCopyWith<$Res> {
  __$$OptionTextImplCopyWithImpl(
      _$OptionTextImpl _value, $Res Function(_$OptionTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? title = null,
    Object? value = null,
  }) {
    return _then(_$OptionTextImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OptionTextImpl extends OptionText {
  _$OptionTextImpl(
      {required this.code, required this.title, required this.value})
      : super._();

  @override
  final String code;
  @override
  final String title;
  @override
  final String value;

  @override
  String toString() {
    return 'StuffOption.text(code: $code, title: $title, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionTextImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, title, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionTextImplCopyWith<_$OptionTextImpl> get copyWith =>
      __$$OptionTextImplCopyWithImpl<_$OptionTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String title, num value) num,
    required TResult Function(String code, String title, List<String> value)
        list,
    required TResult Function(String code, String title, String value) text,
    required TResult Function(String code, String title, bool value) logic,
  }) {
    return text(code, title, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String title, num value)? num,
    TResult? Function(String code, String title, List<String> value)? list,
    TResult? Function(String code, String title, String value)? text,
    TResult? Function(String code, String title, bool value)? logic,
  }) {
    return text?.call(code, title, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String title, num value)? num,
    TResult Function(String code, String title, List<String> value)? list,
    TResult Function(String code, String title, String value)? text,
    TResult Function(String code, String title, bool value)? logic,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(code, title, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OptionNum value) num,
    required TResult Function(OptionList value) list,
    required TResult Function(OptionText value) text,
    required TResult Function(OptionBoolean value) logic,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OptionNum value)? num,
    TResult? Function(OptionList value)? list,
    TResult? Function(OptionText value)? text,
    TResult? Function(OptionBoolean value)? logic,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OptionNum value)? num,
    TResult Function(OptionList value)? list,
    TResult Function(OptionText value)? text,
    TResult Function(OptionBoolean value)? logic,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class OptionText extends StuffOption {
  factory OptionText(
      {required final String code,
      required final String title,
      required final String value}) = _$OptionTextImpl;
  OptionText._() : super._();

  @override
  String get code;
  @override
  String get title;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$OptionTextImplCopyWith<_$OptionTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OptionBooleanImplCopyWith<$Res>
    implements $StuffOptionCopyWith<$Res> {
  factory _$$OptionBooleanImplCopyWith(
          _$OptionBooleanImpl value, $Res Function(_$OptionBooleanImpl) then) =
      __$$OptionBooleanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String title, bool value});
}

/// @nodoc
class __$$OptionBooleanImplCopyWithImpl<$Res>
    extends _$StuffOptionCopyWithImpl<$Res, _$OptionBooleanImpl>
    implements _$$OptionBooleanImplCopyWith<$Res> {
  __$$OptionBooleanImplCopyWithImpl(
      _$OptionBooleanImpl _value, $Res Function(_$OptionBooleanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? title = null,
    Object? value = null,
  }) {
    return _then(_$OptionBooleanImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OptionBooleanImpl extends OptionBoolean {
  _$OptionBooleanImpl(
      {required this.code, required this.title, required this.value})
      : super._();

  @override
  final String code;
  @override
  final String title;
  @override
  final bool value;

  @override
  String toString() {
    return 'StuffOption.logic(code: $code, title: $title, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionBooleanImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, title, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionBooleanImplCopyWith<_$OptionBooleanImpl> get copyWith =>
      __$$OptionBooleanImplCopyWithImpl<_$OptionBooleanImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String title, num value) num,
    required TResult Function(String code, String title, List<String> value)
        list,
    required TResult Function(String code, String title, String value) text,
    required TResult Function(String code, String title, bool value) logic,
  }) {
    return logic(code, title, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String title, num value)? num,
    TResult? Function(String code, String title, List<String> value)? list,
    TResult? Function(String code, String title, String value)? text,
    TResult? Function(String code, String title, bool value)? logic,
  }) {
    return logic?.call(code, title, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String title, num value)? num,
    TResult Function(String code, String title, List<String> value)? list,
    TResult Function(String code, String title, String value)? text,
    TResult Function(String code, String title, bool value)? logic,
    required TResult orElse(),
  }) {
    if (logic != null) {
      return logic(code, title, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OptionNum value) num,
    required TResult Function(OptionList value) list,
    required TResult Function(OptionText value) text,
    required TResult Function(OptionBoolean value) logic,
  }) {
    return logic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OptionNum value)? num,
    TResult? Function(OptionList value)? list,
    TResult? Function(OptionText value)? text,
    TResult? Function(OptionBoolean value)? logic,
  }) {
    return logic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OptionNum value)? num,
    TResult Function(OptionList value)? list,
    TResult Function(OptionText value)? text,
    TResult Function(OptionBoolean value)? logic,
    required TResult orElse(),
  }) {
    if (logic != null) {
      return logic(this);
    }
    return orElse();
  }
}

abstract class OptionBoolean extends StuffOption {
  factory OptionBoolean(
      {required final String code,
      required final String title,
      required final bool value}) = _$OptionBooleanImpl;
  OptionBoolean._() : super._();

  @override
  String get code;
  @override
  String get title;
  @override
  bool get value;
  @override
  @JsonKey(ignore: true)
  _$$OptionBooleanImplCopyWith<_$OptionBooleanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
