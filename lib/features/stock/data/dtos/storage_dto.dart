import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_dto.freezed.dart';

@freezed
sealed class StorageItemDto with _$StorageItemDto{
  factory StorageItemDto.stock({
    required int id,
    required String title,
    required String address,
    required double latitude,
    required double longitude
  }) = StockDto;

  factory StorageItemDto.storage({
    required int id,
    required String title,
    @Default(null) StorageItemDto? storageDto
  }) = StorageDto;

  factory StorageItemDto.user({
    required int id,
    required String title
  }) = UserDto;

  static StorageItemDto fromMap(Map<String, dynamic> json) {
    final type = json['type'] as String;
    final id = json['id'];
    final title = json['title'];
    if(type == 'stock') return StockDto(id: id, title: title, address: json['address'], latitude: json['latitude'], longitude: json['longitude']);
    if(type == 'user') return UserDto(id: id, title: title);
    return StorageDto(id: id, title: title, storageDto: StorageItemDto.fromMap(json['storage']));
  }

}