import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocktacking/features/stock/data/dtos/storage_dto.dart';

part 'stuff_keeping_report_dto.freezed.dart';

@freezed
class StuffKeepingReportDto with _$StuffKeepingReportDto{
  const factory StuffKeepingReportDto({
    required final int id,
    required final int stuffId,
    required final DateTime takeTime,
    required final UserDto takeUser,
    required final bool takeIsBroken,
    final String? takeComment,
    required final DateTime? putTime,
    required final UserDto? putUser,
    required final bool? putIsBroken,
    final StorageItemDto? putPlace,
    final String? putComment,
  }) = _StuffKeepingReportDto;

  factory StuffKeepingReportDto.fromMap(Map<String, dynamic> res) => StuffKeepingReportDto(
      id: res['id'],
      stuffId: res['item_id'],
      takeComment: res['comment_start'],
      takeTime: DateTime.parse(res['created_at']),
      takeUser: UserDto(id: res['user_start']['id'], title: res['user_start']['name'] ),
      takeIsBroken: res['is_broken_start'],
      putTime: DateTime.tryParse(res['closed_at'] ?? ''),
      putUser: res['user_end'] != null
          ? UserDto(id: res['user_end']['id'], title: res['user_end']['name'] )
          : null,
      putIsBroken: res['is_broken_end'],
      putComment:  res['comment_end'],

  );
}