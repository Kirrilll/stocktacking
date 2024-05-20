import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocktacking/features/stock/domain/entities/storage_base.dart';

part 'storage.freezed.dart';


@freezed
sealed class StorageItem with _$StorageItem {
  StorageItem._();

  @Implements<StorageBase>()
  factory StorageItem.stock(
      int id,
    String title,
    String address,
    (double, double) coordinates
  ) = Stock;

  @Implements<StorageBase>()
  factory StorageItem.storage(
      int id,
    String title,
    String fullTitle,
    int stockId
  ) = Storage;

  @Implements<StorageBase>()
  factory StorageItem.user(
      String name,
      int userId
  ) = User;

  String get fullName => switch(this) {
    Storage(:final fullTitle, :final title) => fullTitle,
    Stock(:final title) => title,
    User(:final name, :final userId) => name
  };

  String get title => switch(this) {
    Storage(:final fullTitle, :final title) => title,
    Stock(:final title) => title,
    User(:final name, :final userId) => name
  };

}

