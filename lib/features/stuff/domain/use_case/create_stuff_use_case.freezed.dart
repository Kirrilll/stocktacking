// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_stuff_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateStuffArgs {
  String get name => throw _privateConstructorUsedError;
  XFile get image => throw _privateConstructorUsedError;
  StorageItem? get storageItem => throw _privateConstructorUsedError;
  int get orgId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateStuffArgsCopyWith<CreateStuffArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStuffArgsCopyWith<$Res> {
  factory $CreateStuffArgsCopyWith(
          CreateStuffArgs value, $Res Function(CreateStuffArgs) then) =
      _$CreateStuffArgsCopyWithImpl<$Res, CreateStuffArgs>;
  @useResult
  $Res call(
      {String name,
      XFile image,
      StorageItem? storageItem,
      int orgId,
      int userId,
      int count});

  $StorageItemCopyWith<$Res>? get storageItem;
}

/// @nodoc
class _$CreateStuffArgsCopyWithImpl<$Res, $Val extends CreateStuffArgs>
    implements $CreateStuffArgsCopyWith<$Res> {
  _$CreateStuffArgsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? storageItem = freezed,
    Object? orgId = null,
    Object? userId = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
      storageItem: freezed == storageItem
          ? _value.storageItem
          : storageItem // ignore: cast_nullable_to_non_nullable
              as StorageItem?,
      orgId: null == orgId
          ? _value.orgId
          : orgId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StorageItemCopyWith<$Res>? get storageItem {
    if (_value.storageItem == null) {
      return null;
    }

    return $StorageItemCopyWith<$Res>(_value.storageItem!, (value) {
      return _then(_value.copyWith(storageItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateStuffArgsImplCopyWith<$Res>
    implements $CreateStuffArgsCopyWith<$Res> {
  factory _$$CreateStuffArgsImplCopyWith(_$CreateStuffArgsImpl value,
          $Res Function(_$CreateStuffArgsImpl) then) =
      __$$CreateStuffArgsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      XFile image,
      StorageItem? storageItem,
      int orgId,
      int userId,
      int count});

  @override
  $StorageItemCopyWith<$Res>? get storageItem;
}

/// @nodoc
class __$$CreateStuffArgsImplCopyWithImpl<$Res>
    extends _$CreateStuffArgsCopyWithImpl<$Res, _$CreateStuffArgsImpl>
    implements _$$CreateStuffArgsImplCopyWith<$Res> {
  __$$CreateStuffArgsImplCopyWithImpl(
      _$CreateStuffArgsImpl _value, $Res Function(_$CreateStuffArgsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? storageItem = freezed,
    Object? orgId = null,
    Object? userId = null,
    Object? count = null,
  }) {
    return _then(_$CreateStuffArgsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
      storageItem: freezed == storageItem
          ? _value.storageItem
          : storageItem // ignore: cast_nullable_to_non_nullable
              as StorageItem?,
      orgId: null == orgId
          ? _value.orgId
          : orgId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreateStuffArgsImpl implements _CreateStuffArgs {
  _$CreateStuffArgsImpl(
      {required this.name,
      required this.image,
      this.storageItem,
      required this.orgId,
      required this.userId,
      this.count = 1});

  @override
  final String name;
  @override
  final XFile image;
  @override
  final StorageItem? storageItem;
  @override
  final int orgId;
  @override
  final int userId;
  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'CreateStuffArgs(name: $name, image: $image, storageItem: $storageItem, orgId: $orgId, userId: $userId, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateStuffArgsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.storageItem, storageItem) ||
                other.storageItem == storageItem) &&
            (identical(other.orgId, orgId) || other.orgId == orgId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, image, storageItem, orgId, userId, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateStuffArgsImplCopyWith<_$CreateStuffArgsImpl> get copyWith =>
      __$$CreateStuffArgsImplCopyWithImpl<_$CreateStuffArgsImpl>(
          this, _$identity);
}

abstract class _CreateStuffArgs implements CreateStuffArgs {
  factory _CreateStuffArgs(
      {required final String name,
      required final XFile image,
      final StorageItem? storageItem,
      required final int orgId,
      required final int userId,
      final int count}) = _$CreateStuffArgsImpl;

  @override
  String get name;
  @override
  XFile get image;
  @override
  StorageItem? get storageItem;
  @override
  int get orgId;
  @override
  int get userId;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$CreateStuffArgsImplCopyWith<_$CreateStuffArgsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
