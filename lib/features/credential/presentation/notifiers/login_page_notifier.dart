import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/src/either.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/core/riverpod/async_state.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/credential/domain/entities/credential.dart';
import 'package:stocktacking/features/credential/presentation/providers/credentials_providers.dart';

part 'login_page_notifier.g.dart';

@riverpod
class LoginPageNotifier extends _$LoginPageNotifier {
  @override
  AsyncState build() => AsyncState.initial();

  void setupOnError(void Function(String error) onError) => ref.listenSelf((previous, curr) {
    if(curr is Error) onError(curr.message ?? 'Что-то пошло не так(');
  });

  Future<void> login(String phone) async {
    ref.listen(useLoginUseCaseProvider.call(phone), (_, curr) {
      state = switch(curr) {
        AsyncLoading(:final value) => AsyncState.loading(),
        AsyncError(:final error, :final stackTrace) =>  AsyncState.error(error is IFailure
            ? error.message
            : 'Что-то пошло не так('
        ),
        AsyncData(:final value) => AsyncState.successful(value),
        _ => AsyncState.initial()
      };
    }, fireImmediately: true);
  }
}