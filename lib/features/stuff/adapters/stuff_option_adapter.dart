import 'package:stocktacking/features/stuff/data/dtos/stuff_option_dto.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff_option.dart';

class StuffOptionAdapter {

  const StuffOptionAdapter();

  StuffOption fromDto(StuffOptionDto stuffOptionDto) {
    if(stuffOptionDto.type == 'num') return StuffOption.num(code: stuffOptionDto.code, title: stuffOptionDto.title, value: num.parse(stuffOptionDto.value));
    if(stuffOptionDto.type == 'list') return StuffOption.list(code: stuffOptionDto.code, title: stuffOptionDto.title, value: stuffOptionDto.value.split(', '));
    if(stuffOptionDto.type == 'logic') return StuffOption.logic(code: stuffOptionDto.code, title: stuffOptionDto.title, value: bool.parse(stuffOptionDto.value));
    return StuffOption.text(code: stuffOptionDto.code, title: stuffOptionDto.title, value: stuffOptionDto.value);
  }

  StuffOptionDto toDto(StuffOption stuffOption) {
    return const StuffOptionDto(code: '', title: '', value: '', type: '');
  }
}