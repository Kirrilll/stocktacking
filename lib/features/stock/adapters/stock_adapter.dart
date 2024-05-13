import 'package:stocktacking/features/stock/data/dtos/storage_dto.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stock/domain/entities/storage_base.dart';

class StockAdapter {
  StorageBase fromDto(StorageItemDto storageDto) {
    return storageDto.map(
        stock: (stock) => Stock(stock.title, stock.address, (stock.latitude, stock.longitude)),
        storage: (storage) {
          final nestedStorage = storage.storageDto;
          return Storage(storage.title, nestedStorage !=  null ? fromDto(nestedStorage) : null);
        },
        user: (user) => User(user.title, user.id)
    );
  }
}
