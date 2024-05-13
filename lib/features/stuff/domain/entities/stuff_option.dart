import 'package:freezed_annotation/freezed_annotation.dart';

part 'stuff_option.freezed.dart';

@freezed
class StuffOption with _$StuffOption{

  factory StuffOption.num({
    required final String code,
    required final String title,
    required final num value
  }) = OptionNum;

  factory StuffOption.list({
    required final String code,
    required final String title,
    required final List<String> value
  }) = OptionList;

  factory StuffOption.text({
    required final String code,
    required final String title,
    required final String value
  }) = OptionText;
}