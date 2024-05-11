import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocktacking/features/stock/domain/entities/storage_base.dart';

part 'storage.freezed.dart';


@freezed
sealed class StorageItem with _$StorageItem {
  StorageItem._();

  @Implements<StorageBase>()
  factory StorageItem.stock(
    String title,
    String address,
    (double, double) coordinates
  ) = Stock;

  @Implements<StorageBase>()
  factory StorageItem.storage(
    String title,
    StorageBase? storage
  ) = Storage;

  @Implements<StorageBase>()
  factory StorageItem.user(
      String name,
      int userId
  ) = User;

  StorageBase? get storage => switch(this) {
    Storage(:final storage, :final title) => storage,
    Stock(:final title) => null,
    User(:final name, :final userId) => null
  };

  String get title => switch(this) {
    Storage(:final storage, :final title) => title,
    Stock(:final title) => title,
    User(:final name, :final userId) => name
  };

}

