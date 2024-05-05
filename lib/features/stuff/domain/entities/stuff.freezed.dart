// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stuff.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Stuff {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  StorageBase get storage => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  bool get isBroken => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StuffCopyWith<Stuff> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StuffCopyWith<$Res> {
  factory $StuffCopyWith(Stuff value, $Res Function(Stuff) then) =
      _$StuffCopyWithImpl<$Res, Stuff>;
  @useResult
  $Res call(
      {int id,
      String title,
      String image,
      StorageBase storage,
      int? categoryId,
      bool isBroken,
      String? comment});
}

/// @nodoc
class _$StuffCopyWithImpl<$Res, $Val extends Stuff>
    implements $StuffCopyWith<$Res> {
  _$StuffCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? storage = null,
    Object? categoryId = freezed,
    Object? isBroken = null,
    Object? comment = freezed,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      storage: null == storage
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as StorageBase,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      isBroken: null == isBroken
          ? _value.isBroken
          : isBroken // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StuffImplCopyWith<$Res> implements $StuffCopyWith<$Res> {
  factory _$$StuffImplCopyWith(
          _$StuffImpl value, $Res Function(_$StuffImpl) then) =
      __$$StuffImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String image,
      StorageBase storage,
      int? categoryId,
      bool isBroken,
      String? comment});
}

/// @nodoc
class __$$StuffImplCopyWithImpl<$Res>
    extends _$StuffCopyWithImpl<$Res, _$StuffImpl>
    implements _$$StuffImplCopyWith<$Res> {
  __$$StuffImplCopyWithImpl(
      _$StuffImpl _value, $Res Function(_$StuffImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? storage = null,
    Object? categoryId = freezed,
    Object? isBroken = null,
    Object? comment = freezed,
  }) {
    return _then(_$StuffImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      storage: null == storage
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as StorageBase,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      isBroken: null == isBroken
          ? _value.isBroken
          : isBroken // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StuffImpl extends _Stuff {
  const _$StuffImpl(
      {required this.id,
      required this.title,
      required this.image,
      required this.storage,
      required this.categoryId,
      this.isBroken = false,
      this.comment = null})
      : super._();

  @override
  final int id;
  @override
  final String title;
  @override
  final String image;
  @override
  final StorageBase storage;
  @override
  final int? categoryId;
  @override
  @JsonKey()
  final bool isBroken;
  @override
  @JsonKey()
  final String? comment;

  @override
  String toString() {
    return 'Stuff(id: $id, title: $title, image: $image, storage: $storage, categoryId: $categoryId, isBroken: $isBroken, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StuffImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.storage, storage) || other.storage == storage) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.isBroken, isBroken) ||
                other.isBroken == isBroken) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, image, storage, categoryId, isBroken, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StuffImplCopyWith<_$StuffImpl> get copyWith =>
      __$$StuffImplCopyWithImpl<_$StuffImpl>(this, _$identity);
}

abstract class _Stuff extends Stuff {
  const factory _Stuff(
      {required final int id,
      required final String title,
      required final String image,
      required final StorageBase storage,
      required final int? categoryId,
      final bool isBroken,
      final String? comment}) = _$StuffImpl;
  const _Stuff._() : super._();

  @override
  int get id;
  @override
  String get title;
  @override
  String get image;
  @override
  StorageBase get storage;
  @override
  int? get categoryId;
  @override
  bool get isBroken;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$StuffImplCopyWith<_$StuffImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
