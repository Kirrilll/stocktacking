import 'package:stocktacking/features/stock/data/dtos/storage_dto.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stock/domain/entities/storage_base.dart';

class StockAdapter {

  const StockAdapter();

  Storage storageFromDto(StorageDto storageDto) {
    return Storage(storageDto.id, storageDto.title, storageDto.fullName, storageDto.stockId);
  }

  Stock stockFromDto(StockDto stock) {
    return Stock(stock.id ,stock.title, stock.address, (stock.latitude, stock.longitude));
  }

  StorageItem fromDto(StorageItemDto storageDto) {
    return storageDto.map(
        stock: stockFromDto,
        storage: storageFromDto,
        user: (user) => User(user.title, user.id)
    );
  }
}
