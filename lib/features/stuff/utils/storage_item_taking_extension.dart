import 'package:stocktacking/features/stock/domain/entities/storage.dart';

extension StorageItemTaking on StorageItem {
  String get takingVerb => switch(this) {
    User(:final name, :final userId) => 'Забрал у',
    _ => 'Взял с'
  };

  String get puttingVer => switch(this) {
    User(:final name, :final userId) => 'Передал',
    _ => 'Положил на'
  };
}