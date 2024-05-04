// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StorageItem {
  String get title => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) stock,
    required TResult Function(String title, StorageBase? storage) storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? stock,
    TResult? Function(String title, StorageBase? storage)? storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? stock,
    TResult Function(String title, StorageBase? storage)? storage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Stock value) stock,
    required TResult Function(Storage value) storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Stock value)? stock,
    TResult? Function(Storage value)? storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Stock value)? stock,
    TResult Function(Storage value)? storage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StorageItemCopyWith<StorageItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageItemCopyWith<$Res> {
  factory $StorageItemCopyWith(
          StorageItem value, $Res Function(StorageItem) then) =
      _$StorageItemCopyWithImpl<$Res, StorageItem>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$StorageItemCopyWithImpl<$Res, $Val extends StorageItem>
    implements $StorageItemCopyWith<$Res> {
  _$StorageItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockImplCopyWith<$Res>
    implements $StorageItemCopyWith<$Res> {
  factory _$$StockImplCopyWith(
          _$StockImpl value, $Res Function(_$StockImpl) then) =
      __$$StockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$StockImplCopyWithImpl<$Res>
    extends _$StorageItemCopyWithImpl<$Res, _$StockImpl>
    implements _$$StockImplCopyWith<$Res> {
  __$$StockImplCopyWithImpl(
      _$StockImpl _value, $Res Function(_$StockImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$StockImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StockImpl extends Stock {
  _$StockImpl(this.title) : super._();

  @override
  final String title;

  @override
  String toString() {
    return 'StorageItem.stock(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockImplCopyWith<_$StockImpl> get copyWith =>
      __$$StockImplCopyWithImpl<_$StockImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) stock,
    required TResult Function(String title, StorageBase? storage) storage,
  }) {
    return stock(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? stock,
    TResult? Function(String title, StorageBase? storage)? storage,
  }) {
    return stock?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? stock,
    TResult Function(String title, StorageBase? storage)? storage,
    required TResult orElse(),
  }) {
    if (stock != null) {
      return stock(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Stock value) stock,
    required TResult Function(Storage value) storage,
  }) {
    return stock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Stock value)? stock,
    TResult? Function(Storage value)? storage,
  }) {
    return stock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Stock value)? stock,
    TResult Function(Storage value)? storage,
    required TResult orElse(),
  }) {
    if (stock != null) {
      return stock(this);
    }
    return orElse();
  }
}

abstract class Stock extends StorageItem implements StorageBase {
  factory Stock(final String title) = _$StockImpl;
  Stock._() : super._();

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$StockImplCopyWith<_$StockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StorageImplCopyWith<$Res>
    implements $StorageItemCopyWith<$Res> {
  factory _$$StorageImplCopyWith(
          _$StorageImpl value, $Res Function(_$StorageImpl) then) =
      __$$StorageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, StorageBase? storage});
}

/// @nodoc
class __$$StorageImplCopyWithImpl<$Res>
    extends _$StorageItemCopyWithImpl<$Res, _$StorageImpl>
    implements _$$StorageImplCopyWith<$Res> {
  __$$StorageImplCopyWithImpl(
      _$StorageImpl _value, $Res Function(_$StorageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? storage = freezed,
  }) {
    return _then(_$StorageImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == storage
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as StorageBase?,
    ));
  }
}

/// @nodoc

class _$StorageImpl extends Storage {
  _$StorageImpl(this.title, this.storage) : super._();

  @override
  final String title;
  @override
  final StorageBase? storage;

  @override
  String toString() {
    return 'StorageItem.storage(title: $title, storage: $storage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.storage, storage) || other.storage == storage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, storage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageImplCopyWith<_$StorageImpl> get copyWith =>
      __$$StorageImplCopyWithImpl<_$StorageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) stock,
    required TResult Function(String title, StorageBase? storage) storage,
  }) {
    return storage(title, this.storage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? stock,
    TResult? Function(String title, StorageBase? storage)? storage,
  }) {
    return storage?.call(title, this.storage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? stock,
    TResult Function(String title, StorageBase? storage)? storage,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(title, this.storage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Stock value) stock,
    required TResult Function(Storage value) storage,
  }) {
    return storage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Stock value)? stock,
    TResult? Function(Storage value)? storage,
  }) {
    return storage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Stock value)? stock,
    TResult Function(Storage value)? storage,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(this);
    }
    return orElse();
  }
}

abstract class Storage extends StorageItem implements StorageBase {
  factory Storage(final String title, final StorageBase? storage) =
      _$StorageImpl;
  Storage._() : super._();

  @override
  String get title;
  StorageBase? get storage;
  @override
  @JsonKey(ignore: true)
  _$$StorageImplCopyWith<_$StorageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
