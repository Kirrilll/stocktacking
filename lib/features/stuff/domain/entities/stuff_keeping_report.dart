import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff_keeping_info.dart';

part 'stuff_keeping_report.freezed.dart';

@freezed
class StuffKeepingReport with _$StuffKeepingReport {

  const StuffKeepingReport._();

  const factory StuffKeepingReport({
    required final int id,
    required final int stuffId,
    required final StuffKeepingInfo takeInfo,
    final StuffKeepingInfo? putInfo
  }) = _StuffKeepingReport;

  bool get isUsing => putInfo == null;

  bool get isBroken => takeInfo.isBroken || (putInfo?.isBroken ?? false);
}




