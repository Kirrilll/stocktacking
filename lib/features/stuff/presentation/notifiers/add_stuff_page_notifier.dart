import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/core/riverpod/async_state.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stuff/presentation/providers/stuff_providers.dart';

import '../../../../core/utils/failure.dart';

part 'add_stuff_page_notifier.g.dart';

@riverpod
class AddStuffPageNotifier extends _$AddStuffPageNotifier {
  @override
  AsyncState build() {
    return AsyncState.initial();
  }

  void setupOnCreateResult({
    required void Function(String error) onError,
    required void Function() onSuccessful
  }) => ref.listenSelf((previous, curr) {
    switch(curr) {
      case Error(:final message): onError(message ?? 'Упс... что-то пошло не так');
      case Successful(): onSuccessful();
      default:
    }
  });


  createStuff({
    required String name,
    required XFile image,
    StorageItem? storage,
    int count = 1,
  }) async {
    ref.listen(createStuffUseCaseProvider.call(title: name, storage: storage, file: image, count: count), (_, curr) {
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