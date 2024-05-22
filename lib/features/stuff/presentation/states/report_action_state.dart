import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_action_state.freezed.dart';

@freezed
sealed class ReportActionState {
  factory ReportActionState.take(int stuffId) = Take;
  factory ReportActionState.put(int reportId) = Put;
  factory ReportActionState.retake(int reportId, int prevUserId) = Retake;
}