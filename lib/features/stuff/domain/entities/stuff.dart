import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stock/domain/entities/storage_base.dart';

import '../../../credential/domain/entities/profile.dart';

part 'stuff.freezed.dart';

@freezed
class Stuff with _$Stuff {

  const Stuff._();

  const factory Stuff({
    required final int id,
    required final String title,
    required final String image,
    required final StorageBase storage,
    required final int? categoryId,
    @Default(false) final bool isBroken,
    @Default(null) final String? comment
  }) = _Stuff;

  String get fullStorageName => _getStorageFullName(storage);

  bool get isUsing => storage is User;

  String _getStorageFullName(StorageBase storage) {
    final nestedStorage = storage.storage;
    if(nestedStorage == null) return storage.title;
    return '${storage.title}/${_getStorageFullName(nestedStorage)}';
  }
}

