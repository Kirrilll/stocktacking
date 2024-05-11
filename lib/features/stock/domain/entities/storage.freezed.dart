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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String address, (double, double) coordinates)
        stock,
    required TResult Function(String title, StorageBase? storage) storage,
    required TResult Function(String name, int userId) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title, String address, (double, double) coordinates)?
        stock,
    TResult? Function(String title, StorageBase? storage)? storage,
    TResult? Function(String name, int userId)? user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String address, (double, double) coordinates)?
        stock,
    TResult Function(String title, StorageBase? storage)? storage,
    TResult Function(String name, int userId)? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Stock value) stock,
    required TResult Function(Storage value) storage,
    required TResult Function(User value) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Stock value)? stock,
    TResult? Function(Storage value)? storage,
    TResult? Function(User value)? user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Stock value)? stock,
    TResult Function(Storage value)? storage,
    TResult Function(User value)? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageItemCopyWith<$Res> {
  factory $StorageItemCopyWith(
          StorageItem value, $Res Function(StorageItem) then) =
      _$StorageItemCopyWithImpl<$Res, StorageItem>;
}

/// @nodoc
class _$StorageItemCopyWithImpl<$Res, $Val extends StorageItem>
    implements $StorageItemCopyWith<$Res> {
  _$StorageItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StockImplCopyWith<$Res> {
  factory _$$StockImplCopyWith(
          _$StockImpl value, $Res Function(_$StockImpl) then) =
      __$$StockImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String address, (double, double) coordinates});
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
    Object? address = null,
    Object? coordinates = null,
  }) {
    return _then(_$StockImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as (double, double),
    ));
  }
}

/// @nodoc

class _$StockImpl extends Stock {
  _$StockImpl(this.title, this.address, this.coordinates) : super._();

  @override
  final String title;
  @override
  final String address;
  @override
  final (double, double) coordinates;

  @override
  String toString() {
    return 'StorageItem.stock(title: $title, address: $address, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, address, coordinates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockImplCopyWith<_$StockImpl> get copyWith =>
      __$$StockImplCopyWithImpl<_$StockImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String address, (double, double) coordinates)
        stock,
    required TResult Function(String title, StorageBase? storage) storage,
    required TResult Function(String name, int userId) user,
  }) {
    return stock(title, address, coordinates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title, String address, (double, double) coordinates)?
        stock,
    TResult? Function(String title, StorageBase? storage)? storage,
    TResult? Function(String name, int userId)? user,
  }) {
    return stock?.call(title, address, coordinates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String address, (double, double) coordinates)?
        stock,
    TResult Function(String title, StorageBase? storage)? storage,
    TResult Function(String name, int userId)? user,
    required TResult orElse(),
  }) {
    if (stock != null) {
      return stock(title, address, coordinates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Stock value) stock,
    required TResult Function(Storage value) storage,
    required TResult Function(User value) user,
  }) {
    return stock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Stock value)? stock,
    TResult? Function(Storage value)? storage,
    TResult? Function(User value)? user,
  }) {
    return stock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Stock value)? stock,
    TResult Function(Storage value)? storage,
    TResult Function(User value)? user,
    required TResult orElse(),
  }) {
    if (stock != null) {
      return stock(this);
    }
    return orElse();
  }
}

abstract class Stock extends StorageItem implements StorageBase {
  factory Stock(final String title, final String address,
      final (double, double) coordinates) = _$StockImpl;
  Stock._() : super._();

  String get title;
  String get address;
  (double, double) get coordinates;
  @JsonKey(ignore: true)
  _$$StockImplCopyWith<_$StockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StorageImplCopyWith<$Res> {
  factory _$$StorageImplCopyWith(
          _$StorageImpl value, $Res Function(_$StorageImpl) then) =
      __$$StorageImplCopyWithImpl<$Res>;
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
    required TResult Function(
            String title, String address, (double, double) coordinates)
        stock,
    required TResult Function(String title, StorageBase? storage) storage,
    required TResult Function(String name, int userId) user,
  }) {
    return storage(title, this.storage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title, String address, (double, double) coordinates)?
        stock,
    TResult? Function(String title, StorageBase? storage)? storage,
    TResult? Function(String name, int userId)? user,
  }) {
    return storage?.call(title, this.storage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String address, (double, double) coordinates)?
        stock,
    TResult Function(String title, StorageBase? storage)? storage,
    TResult Function(String name, int userId)? user,
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
    required TResult Function(User value) user,
  }) {
    return storage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Stock value)? stock,
    TResult? Function(Storage value)? storage,
    TResult? Function(User value)? user,
  }) {
    return storage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Stock value)? stock,
    TResult Function(Storage value)? storage,
    TResult Function(User value)? user,
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

  String get title;
  StorageBase? get storage;
  @JsonKey(ignore: true)
  _$$StorageImplCopyWith<_$StorageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, int userId});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$StorageItemCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? userId = null,
  }) {
    return _then(_$UserImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UserImpl extends User {
  _$UserImpl(this.name, this.userId) : super._();

  @override
  final String name;
  @override
  final int userId;

  @override
  String toString() {
    return 'StorageItem.user(name: $name, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String address, (double, double) coordinates)
        stock,
    required TResult Function(String title, StorageBase? storage) storage,
    required TResult Function(String name, int userId) user,
  }) {
    return user(name, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title, String address, (double, double) coordinates)?
        stock,
    TResult? Function(String title, StorageBase? storage)? storage,
    TResult? Function(String name, int userId)? user,
  }) {
    return user?.call(name, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String address, (double, double) coordinates)?
        stock,
    TResult Function(String title, StorageBase? storage)? storage,
    TResult Function(String name, int userId)? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(name, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Stock value) stock,
    required TResult Function(Storage value) storage,
    required TResult Function(User value) user,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Stock value)? stock,
    TResult? Function(Storage value)? storage,
    TResult? Function(User value)? user,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Stock value)? stock,
    TResult Function(Storage value)? storage,
    TResult Function(User value)? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class User extends StorageItem implements StorageBase {
  factory User(final String name, final int userId) = _$UserImpl;
  User._() : super._();

  String get name;
  int get userId;
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
