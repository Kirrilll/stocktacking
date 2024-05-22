import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/core/riverpod/async_state.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stuff/presentation/providers/stuff_keeping_providers.dart';
import 'package:stocktacking/features/stuff/presentation/providers/stuff_providers.dart';

import '../../../../core/utils/failure.dart';

part 'report_action_notifier.g.dart';

@riverpod
class ReportActionNotifier extends _$ReportActionNotifier {
  @override
  AsyncState<void> build() {
    return AsyncState.initial();
  }

  void setupOnCreateResult({
    required void Function(String error) onError,
    required void Function() onSuccessful
  }) => ref.listenSelf((previous, curr) {
    switch(curr) {
      case Error(:final message): onError(message ?? 'Упс... что-то пошло не так');
      case Successful(:final v): onSuccessful();
      default:
    }
  });

  Future<void> onCreateInfo({
    bool isBroken = false,
    String? comment,
    required int stuffId,
    int? reportId,
    StorageItem? storageItem,
    int? prevUserId
  }) async {

    debugPrint('REPORT ID - $reportId');


    if(reportId != null && storageItem != null) {
      debugPrint('adada');
      onPutStuff(item: storageItem, reportId: reportId, isBroken: isBroken, comment: comment);
    }
    else if(reportId != null && prevUserId != null) {
      onRetakeStuff(reportId: reportId, stuffId: stuffId, prevUserId: prevUserId, isBroken: isBroken, comment: comment);
    }
    else {
      onTakeStuff(stuffId: stuffId, isBroken: isBroken, comment: comment);
    }
  }

  Future<void> onPutStuff({
    required StorageItem item,
    required int reportId,
    bool isBroken = false,
    String? comment,
  }) async {
    ref.listen(usePutStuffUseCaseProvider.call(item: item, reportId: reportId, isBroken: isBroken, comment: comment), (previous, curr) {
      state = switch(curr) {
        AsyncLoading(:final value) => AsyncState.loading(),
        AsyncError(:final error, :final stackTrace) =>  AsyncState.error(error is IFailure
            ? error.message
            : 'Что-то пошло не так('
        ),
        AsyncData(:final value) => AsyncState.successful(null),
        _ => AsyncState.initial()
      };
    });
  }

  Future<void> onRetakeStuff({
    required int reportId,
    bool isBroken = false,
    required int stuffId,
    required int prevUserId,
    String? comment,
  }) async {
    ref.listen(useRetakeStuffUseCaseProvider.call(stuffId: stuffId, reportId: reportId, prevUserId: prevUserId), (previous, curr) {
      state = switch(curr) {
        AsyncLoading(:final value) => AsyncState.loading(),
        AsyncError(:final error, :final stackTrace) =>  AsyncState.error(error is IFailure
            ? error.message
            : 'Что-то пошло не так('
        ),
        AsyncData(:final value) => AsyncState.successful(null),
        _ => AsyncState.initial()
      };
    });
  }

  Future<void> onTakeStuff({
    bool isBroken = false,
    required int stuffId,
    String? comment,
  }) async {
    ref.listen(useTakeStuffUseCaseProvider.call(stuffId: stuffId, isBroken: isBroken, comment: comment), (previous, curr) {
      state = switch(curr) {
        AsyncLoading(:final value) => AsyncState.loading(),
        AsyncError(:final error, :final stackTrace) =>  AsyncState.error(error is IFailure
            ? error.message
            : 'Что-то пошло не так('
        ),
        AsyncData(:final value) => AsyncState.successful(null),
        _ => AsyncState.initial()
      };
    });
  }
}