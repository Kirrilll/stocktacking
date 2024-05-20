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
            int id, String title, String address, (double, double) coordinates)
        stock,
    required TResult Function(
            int id, String title, String fullTitle, int stockId)
        storage,
    required TResult Function(String name, int userId) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id, String title, String address, (double, double) coordinates)?
        stock,
    TResult? Function(int id, String title, String fullTitle, int stockId)?
        storage,
    TResult? Function(String name, int userId)? user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id, String title, String address, (double, double) coordinates)?
        stock,
    TResult Function(int id, String title, String fullTitle, int stockId)?
        storage,
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
  $Res call(
      {int id, String title, String address, (double, double) coordinates});
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
    Object? id = null,
    Object? title = null,
    Object? address = null,
    Object? coordinates = null,
  }) {
    return _then(_$StockImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
  _$StockImpl(this.id, this.title, this.address, this.coordinates) : super._();

  @override
  final int id;
  @override
  final String title;
  @override
  final String address;
  @override
  final (double, double) coordinates;

  @override
  String toString() {
    return 'StorageItem.stock(id: $id, title: $title, address: $address, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, address, coordinates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockImplCopyWith<_$StockImpl> get copyWith =>
      __$$StockImplCopyWithImpl<_$StockImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id, String title, String address, (double, double) coordinates)
        stock,
    required TResult Function(
            int id, String title, String fullTitle, int stockId)
        storage,
    required TResult Function(String name, int userId) user,
  }) {
    return stock(id, title, address, coordinates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id, String title, String address, (double, double) coordinates)?
        stock,
    TResult? Function(int id, String title, String fullTitle, int stockId)?
        storage,
    TResult? Function(String name, int userId)? user,
  }) {
    return stock?.call(id, title, address, coordinates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id, String title, String address, (double, double) coordinates)?
        stock,
    TResult Function(int id, String title, String fullTitle, int stockId)?
        storage,
    TResult Function(String name, int userId)? user,
    required TResult orElse(),
  }) {
    if (stock != null) {
      return stock(id, title, address, coordinates);
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
  factory Stock(final int id, final String title, final String address,
      final (double, double) coordinates) = _$StockImpl;
  Stock._() : super._();

  int get id;
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
  $Res call({int id, String title, String fullTitle, int stockId});
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
    Object? id = null,
    Object? title = null,
    Object? fullTitle = null,
    Object? stockId = null,
  }) {
    return _then(_$StorageImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == fullTitle
          ? _value.fullTitle
          : fullTitle // ignore: cast_nullable_to_non_nullable
              as String,
      null == stockId
          ? _value.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StorageImpl extends Storage {
  _$StorageImpl(this.id, this.title, this.fullTitle, this.stockId) : super._();

  @override
  final int id;
  @override
  final String title;
  @override
  final String fullTitle;
  @override
  final int stockId;

  @override
  String toString() {
    return 'StorageItem.storage(id: $id, title: $title, fullTitle: $fullTitle, stockId: $stockId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.fullTitle, fullTitle) ||
                other.fullTitle == fullTitle) &&
            (identical(other.stockId, stockId) || other.stockId == stockId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, fullTitle, stockId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageImplCopyWith<_$StorageImpl> get copyWith =>
      __$$StorageImplCopyWithImpl<_$StorageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id, String title, String address, (double, double) coordinates)
        stock,
    required TResult Function(
            int id, String title, String fullTitle, int stockId)
        storage,
    required TResult Function(String name, int userId) user,
  }) {
    return storage(id, title, fullTitle, stockId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id, String title, String address, (double, double) coordinates)?
        stock,
    TResult? Function(int id, String title, String fullTitle, int stockId)?
        storage,
    TResult? Function(String name, int userId)? user,
  }) {
    return storage?.call(id, title, fullTitle, stockId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id, String title, String address, (double, double) coordinates)?
        stock,
    TResult Function(int id, String title, String fullTitle, int stockId)?
        storage,
    TResult Function(String name, int userId)? user,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(id, title, fullTitle, stockId);
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
  factory Storage(final int id, final String title, final String fullTitle,
      final int stockId) = _$StorageImpl;
  Storage._() : super._();

  int get id;
  String get title;
  String get fullTitle;
  int get stockId;
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
            int id, String title, String address, (double, double) coordinates)
        stock,
    required TResult Function(
            int id, String title, String fullTitle, int stockId)
        storage,
    required TResult Function(String name, int userId) user,
  }) {
    return user(name, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id, String title, String address, (double, double) coordinates)?
        stock,
    TResult? Function(int id, String title, String fullTitle, int stockId)?
        storage,
    TResult? Function(String name, int userId)? user,
  }) {
    return user?.call(name, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id, String title, String address, (double, double) coordinates)?
        stock,
    TResult Function(int id, String title, String fullTitle, int stockId)?
        storage,
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
