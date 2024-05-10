import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';

part 'stuff_keeping_info.freezed.dart';

@freezed
class StuffKeepingInfo with _$StuffKeepingInfo {
  const factory StuffKeepingInfo({
    required final DateTime time,
    required final User user,
    required final StorageItem place,
    required final bool isBroken,
    final String? comment,
  }) = _StuffKeepingInfo;
}
