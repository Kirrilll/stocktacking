import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stock/domain/entities/storage_base.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff_option.dart';

import '../../../credential/domain/entities/profile.dart';

part 'stuff.freezed.dart';

@freezed
class Stuff with _$Stuff {

  const Stuff._();

  const factory Stuff({
    required final int id,
    required final String title,
    required final String image,
    required final List<StuffOption> options,
    required final StorageItem storage,
    required final int? categoryId,
    @Default(false) final bool isBroken,
    @Default(null) final String? comment
  }) = _Stuff;

  String get fullName => '${storage.fullName}/$title';

  bool get isUsing => storage is User;

}

