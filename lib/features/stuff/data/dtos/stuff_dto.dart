
import 'package:stocktacking/features/stock/data/dtos/storage_dto.dart';
import 'package:stocktacking/features/stuff/data/dtos/stuff_option_dto.dart';

class StuffDto {
  final int id;
  final String imageUrl;
  final String title;
  final int? categoryId;
  final List<StuffOptionDto> options;
  final StorageItemDto storageDto;
  final bool isBroken;
  final String? comment;

  const StuffDto({
    required this.id,
    required this.imageUrl,
    required this.title,
    this.categoryId,
    required this.options,
    required this.storageDto,
    required this.isBroken,
    this.comment
  });


  factory StuffDto.fromMap(Map<String, dynamic> map) {
    return StuffDto(
      id: map['id'] as int,
      imageUrl: map['imageUrl'] as String,
      title: map['title'] as String,
      categoryId: map['categoryId'] as int,
      options: List
          .of(map['options'])
          .map((e) => StuffOptionDto.fromMap(e))
          .toList(),
      comment: map['comment'],
      isBroken: map['is_broken'],
      storageDto: StorageItemDto.fromMap(map['storage']),
    );
  }
// storage: {id: num, title: string, type: user | stock | storage) -> stock (adress, lat, lon), storage ( storage )
  //Вся информация о предмете + storage - user /stock / storage (storageType: user | stock | storage)

}