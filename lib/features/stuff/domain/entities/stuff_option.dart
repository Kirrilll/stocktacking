import 'package:freezed_annotation/freezed_annotation.dart';

part 'stuff_option.freezed.dart';

@freezed
class StuffOption with _$StuffOption{

  StuffOption._();

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

  factory StuffOption.logic({
    required final String code,
    required final String title,
    required final bool value
  }) = OptionBoolean;

  String get text => map(
      num: (n) => n.value.toString(),
      list: (l) => l.value.join(', '),
      text: (t) => t.value,
      logic: (logic) => logic.value ? 'Да' : 'Нет'
  );
}