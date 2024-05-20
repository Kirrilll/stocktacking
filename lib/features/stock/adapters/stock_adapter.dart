import 'package:stocktacking/features/stock/data/dtos/storage_dto.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stock/domain/entities/storage_base.dart';

class StockAdapter {

  const StockAdapter();

  Storage storageFromDto(StorageDto storageDto) {
    final nestedStorage = storageDto.storageDto;
    return Storage(storageDto.title, nestedStorage !=  null ? fromDto(nestedStorage) : null);
  }

  Stock stockFromDto(StockDto stock) {
    return Stock(stock.title, stock.address, (stock.latitude, stock.longitude));
  }

  StorageBase fromDto(StorageItemDto storageDto) {
    return storageDto.map(
        stock: stockFromDto,
        storage: storageFromDto,
        user: (user) => User(user.title, user.id)
    );
  }
}
