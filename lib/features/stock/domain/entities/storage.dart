import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocktacking/features/stock/domain/entities/storage_base.dart';

part 'storage.freezed.dart';

@freezed
sealed class StorageItem with _$StorageItem {
  StorageItem._();

  @Implements<StorageBase>()
  factory StorageItem.stock(
    String title,
  ) = Stock;

  @Implements<StorageBase>()
  factory StorageItem.storage(
    String title,
    StorageBase? storage
  ) = Storage;

  StorageBase? get storage => switch(this) {
    Storage(:final storage, :final title) => storage,
    Stock(:final title) => null
  };

}

