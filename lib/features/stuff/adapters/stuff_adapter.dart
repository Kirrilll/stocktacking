import 'package:stocktacking/features/stock/adapters/stock_adapter.dart';
import 'package:stocktacking/features/stuff/adapters/stuff_option_adapter.dart';
import 'package:stocktacking/features/stuff/data/dtos/stuff_dto.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff.dart';

class StuffAdapter {

  final StuffOptionAdapter _stuffOptionAdapter = StuffOptionAdapter();
  final StockAdapter _stockAdapter = StockAdapter();

  Stuff fromAdapter(StuffDto stuffDto) {
    return Stuff(
        id: stuffDto.id,
        title: stuffDto.title,
        image: stuffDto.imageUrl,
        options: stuffDto.options
            .map(_stuffOptionAdapter.fromDto)
            .toList(),
        storage: _stockAdapter.fromDto(stuffDto.storageDto),
        categoryId: stuffDto.categoryId,
        isBroken: stuffDto.isBroken,
        comment: stuffDto.comment
    );
  }


}