// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StorageItemDto {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String title, String address,
            double latitude, double longitude)
        stock,
    required TResult Function(int id, String title, StorageItemDto? storageDto)
        storage,
    required TResult Function(int id, String title) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String title, String address, double latitude,
            double longitude)?
        stock,
    TResult? Function(int id, String title, StorageItemDto? storageDto)?
        storage,
    TResult? Function(int id, String title)? user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String title, String address, double latitude,
            double longitude)?
        stock,
    TResult Function(int id, String title, StorageItemDto? storageDto)? storage,
    TResult Function(int id, String title)? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StockDto value) stock,
    required TResult Function(StorageDto value) storage,
    required TResult Function(UserDto value) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StockDto value)? stock,
    TResult? Function(StorageDto value)? storage,
    TResult? Function(UserDto value)? user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StockDto value)? stock,
    TResult Function(StorageDto value)? storage,
    TResult Function(UserDto value)? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StorageItemDtoCopyWith<StorageItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageItemDtoCopyWith<$Res> {
  factory $StorageItemDtoCopyWith(
          StorageItemDto value, $Res Function(StorageItemDto) then) =
      _$StorageItemDtoCopyWithImpl<$Res, StorageItemDto>;
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class _$StorageItemDtoCopyWithImpl<$Res, $Val extends StorageItemDto>
    implements $StorageItemDtoCopyWith<$Res> {
  _$StorageItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockDtoImplCopyWith<$Res>
    implements $StorageItemDtoCopyWith<$Res> {
  factory _$$StockDtoImplCopyWith(
          _$StockDtoImpl value, $Res Function(_$StockDtoImpl) then) =
      __$$StockDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String address,
      double latitude,
      double longitude});
}

/// @nodoc
class __$$StockDtoImplCopyWithImpl<$Res>
    extends _$StorageItemDtoCopyWithImpl<$Res, _$StockDtoImpl>
    implements _$$StockDtoImplCopyWith<$Res> {
  __$$StockDtoImplCopyWithImpl(
      _$StockDtoImpl _value, $Res Function(_$StockDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$StockDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$StockDtoImpl implements StockDto {
  _$StockDtoImpl(
      {required this.id,
      required this.title,
      required this.address,
      required this.latitude,
      required this.longitude});

  @override
  final int id;
  @override
  final String title;
  @override
  final String address;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'StorageItemDto.stock(id: $id, title: $title, address: $address, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, address, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockDtoImplCopyWith<_$StockDtoImpl> get copyWith =>
      __$$StockDtoImplCopyWithImpl<_$StockDtoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String title, String address,
            double latitude, double longitude)
        stock,
    required TResult Function(int id, String title, StorageItemDto? storageDto)
        storage,
    required TResult Function(int id, String title) user,
  }) {
    return stock(id, title, address, latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String title, String address, double latitude,
            double longitude)?
        stock,
    TResult? Function(int id, String title, StorageItemDto? storageDto)?
        storage,
    TResult? Function(int id, String title)? user,
  }) {
    return stock?.call(id, title, address, latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String title, String address, double latitude,
            double longitude)?
        stock,
    TResult Function(int id, String title, StorageItemDto? storageDto)? storage,
    TResult Function(int id, String title)? user,
    required TResult orElse(),
  }) {
    if (stock != null) {
      return stock(id, title, address, latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StockDto value) stock,
    required TResult Function(StorageDto value) storage,
    required TResult Function(UserDto value) user,
  }) {
    return stock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StockDto value)? stock,
    TResult? Function(StorageDto value)? storage,
    TResult? Function(UserDto value)? user,
  }) {
    return stock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StockDto value)? stock,
    TResult Function(StorageDto value)? storage,
    TResult Function(UserDto value)? user,
    required TResult orElse(),
  }) {
    if (stock != null) {
      return stock(this);
    }
    return orElse();
  }
}

abstract class StockDto implements StorageItemDto {
  factory StockDto(
      {required final int id,
      required final String title,
      required final String address,
      required final double latitude,
      required final double longitude}) = _$StockDtoImpl;

  @override
  int get id;
  @override
  String get title;
  String get address;
  double get latitude;
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$StockDtoImplCopyWith<_$StockDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StorageDtoImplCopyWith<$Res>
    implements $StorageItemDtoCopyWith<$Res> {
  factory _$$StorageDtoImplCopyWith(
          _$StorageDtoImpl value, $Res Function(_$StorageDtoImpl) then) =
      __$$StorageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, StorageItemDto? storageDto});

  $StorageItemDtoCopyWith<$Res>? get storageDto;
}

/// @nodoc
class __$$StorageDtoImplCopyWithImpl<$Res>
    extends _$StorageItemDtoCopyWithImpl<$Res, _$StorageDtoImpl>
    implements _$$StorageDtoImplCopyWith<$Res> {
  __$$StorageDtoImplCopyWithImpl(
      _$StorageDtoImpl _value, $Res Function(_$StorageDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? storageDto = freezed,
  }) {
    return _then(_$StorageDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      storageDto: freezed == storageDto
          ? _value.storageDto
          : storageDto // ignore: cast_nullable_to_non_nullable
              as StorageItemDto?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StorageItemDtoCopyWith<$Res>? get storageDto {
    if (_value.storageDto == null) {
      return null;
    }

    return $StorageItemDtoCopyWith<$Res>(_value.storageDto!, (value) {
      return _then(_value.copyWith(storageDto: value));
    });
  }
}

/// @nodoc

class _$StorageDtoImpl implements StorageDto {
  _$StorageDtoImpl(
      {required this.id, required this.title, this.storageDto = null});

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey()
  final StorageItemDto? storageDto;

  @override
  String toString() {
    return 'StorageItemDto.storage(id: $id, title: $title, storageDto: $storageDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.storageDto, storageDto) ||
                other.storageDto == storageDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, storageDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageDtoImplCopyWith<_$StorageDtoImpl> get copyWith =>
      __$$StorageDtoImplCopyWithImpl<_$StorageDtoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String title, String address,
            double latitude, double longitude)
        stock,
    required TResult Function(int id, String title, StorageItemDto? storageDto)
        storage,
    required TResult Function(int id, String title) user,
  }) {
    return storage(id, title, storageDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String title, String address, double latitude,
            double longitude)?
        stock,
    TResult? Function(int id, String title, StorageItemDto? storageDto)?
        storage,
    TResult? Function(int id, String title)? user,
  }) {
    return storage?.call(id, title, storageDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String title, String address, double latitude,
            double longitude)?
        stock,
    TResult Function(int id, String title, StorageItemDto? storageDto)? storage,
    TResult Function(int id, String title)? user,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(id, title, storageDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StockDto value) stock,
    required TResult Function(StorageDto value) storage,
    required TResult Function(UserDto value) user,
  }) {
    return storage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StockDto value)? stock,
    TResult? Function(StorageDto value)? storage,
    TResult? Function(UserDto value)? user,
  }) {
    return storage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StockDto value)? stock,
    TResult Function(StorageDto value)? storage,
    TResult Function(UserDto value)? user,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(this);
    }
    return orElse();
  }
}

abstract class StorageDto implements StorageItemDto {
  factory StorageDto(
      {required final int id,
      required final String title,
      final StorageItemDto? storageDto}) = _$StorageDtoImpl;

  @override
  int get id;
  @override
  String get title;
  StorageItemDto? get storageDto;
  @override
  @JsonKey(ignore: true)
  _$$StorageDtoImplCopyWith<_$StorageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDtoImplCopyWith<$Res>
    implements $StorageItemDtoCopyWith<$Res> {
  factory _$$UserDtoImplCopyWith(
          _$UserDtoImpl value, $Res Function(_$UserDtoImpl) then) =
      __$$UserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class __$$UserDtoImplCopyWithImpl<$Res>
    extends _$StorageItemDtoCopyWithImpl<$Res, _$UserDtoImpl>
    implements _$$UserDtoImplCopyWith<$Res> {
  __$$UserDtoImplCopyWithImpl(
      _$UserDtoImpl _value, $Res Function(_$UserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$UserDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserDtoImpl implements UserDto {
  _$UserDtoImpl({required this.id, required this.title});

  @override
  final int id;
  @override
  final String title;

  @override
  String toString() {
    return 'StorageItemDto.user(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      __$$UserDtoImplCopyWithImpl<_$UserDtoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String title, String address,
            double latitude, double longitude)
        stock,
    required TResult Function(int id, String title, StorageItemDto? storageDto)
        storage,
    required TResult Function(int id, String title) user,
  }) {
    return user(id, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String title, String address, double latitude,
            double longitude)?
        stock,
    TResult? Function(int id, String title, StorageItemDto? storageDto)?
        storage,
    TResult? Function(int id, String title)? user,
  }) {
    return user?.call(id, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String title, String address, double latitude,
            double longitude)?
        stock,
    TResult Function(int id, String title, StorageItemDto? storageDto)? storage,
    TResult Function(int id, String title)? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(id, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StockDto value) stock,
    required TResult Function(StorageDto value) storage,
    required TResult Function(UserDto value) user,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StockDto value)? stock,
    TResult? Function(StorageDto value)? storage,
    TResult? Function(UserDto value)? user,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StockDto value)? stock,
    TResult Function(StorageDto value)? storage,
    TResult Function(UserDto value)? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class UserDto implements StorageItemDto {
  factory UserDto({required final int id, required final String title}) =
      _$UserDtoImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
