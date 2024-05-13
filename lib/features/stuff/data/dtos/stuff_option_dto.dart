import 'dart:convert';

class StuffOptionDto {
  final String code;
  final String title;
  final String value;
  final String type;

  const StuffOptionDto({
    required this.code,
    required this.title,
    required this.value,
    required this.type,
  });

  factory StuffOptionDto.fromMap(Map<String, dynamic> map) {
    return StuffOptionDto(
      code: map['code'] as String,
      title: map['title'] as String,
      value: map['value'] as String,
      type: map['type'] as String,
    );
  }

  static List<StuffOptionDto> listFromJson(String json) => List<StuffOptionDto>
      .from(jsonDecode(json)
      .map((x) => StuffOptionDto.fromMap(x))
  );
}