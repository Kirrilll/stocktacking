import 'package:freezed_annotation/freezed_annotation.dart';

part 'stuff_keeping_report_dto.freezed.dart';

@freezed
class StuffKeepingReportDto with _$StuffKeepingReportDto{
  const factory StuffKeepingReportDto({
    required final int id,
    required final int stuffId,
    required final DateTime takeTime,
    required final int takeUserId,
    required final bool takeIsBroken,
    final String? takeComment,
    required final DateTime putTime,
    required final int putUserId,
    required final bool putIsBroken,
    final String? putComment,
  }) = _StuffKeepingReportDto;
}