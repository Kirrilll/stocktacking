import 'package:freezed_annotation/freezed_annotation.dart';

part 'stuff_keeping_info.freezed.dart';

@freezed
class StuffKeepingInfo with _$StuffKeepingInfo {
  const factory StuffKeepingInfo({
    required final DateTime time,
    required final int userId,
    required final bool isBroken,
    final String? comment,
  }) = _StuffKeepingInfo;
}
