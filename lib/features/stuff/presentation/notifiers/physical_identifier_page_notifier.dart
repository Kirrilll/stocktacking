import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/core/riverpod/async_state.dart';
import 'package:stocktacking/features/stuff/presentation/providers/stuff_providers.dart';
import '../../../../core/utils/failure.dart';
import '../../domain/entities/stuff.dart';

part 'physical_identifier_page_notifier.g.dart';
part 'physical_identifier_page_notifier.freezed.dart';

@freezed
sealed class PhysicalIdentifierPageState with _$PhysicalIdentifierPageState{

  PhysicalIdentifierPageState._();

  factory PhysicalIdentifierPageState({
    required AsyncState<Stuff> getStuffState,
    required AsyncState<bool> existFileState,
    required AsyncState<bool> downloadState
  }) = _PhysicalIdentifierPageState;

  bool get isLoaded => existFileState is Successful && getStuffState is Successful;
}

@riverpod
class PhysicalIdentifierPageNotifier extends _$PhysicalIdentifierPageNotifier {
  @override
  PhysicalIdentifierPageState build(int stuffId) {
    return PhysicalIdentifierPageState(
        getStuffState: Initial(),
        existFileState: Initial(),
        downloadState: Initial()
    );
  }

  void init() {
    _checkExistFile(stuffId);
    _getStuffById(stuffId);
  }


  void setupOnSuccessfulDownload(void Function() onSuccessful) => ref.listenSelf((previous, curr) {
    if(curr is Successful) onSuccessful();
  });

  _getStuffById(int stuffId) {
    ref.listen(getStuffByIdProvider.call(stuffId), (prev, curr) {
      state = switch(curr) {
        AsyncError(:final error, :final stackTrace) => state.copyWith.call(getStuffState: Error(error is IFailure
            ? error.message
            :  'Что-то пошло не так')
        ),
        AsyncData(:final value) => state.copyWith.call(getStuffState: Successful(value)),
        _ => state.copyWith.call(getStuffState: Loading())
      };
    }, fireImmediately: true);
  }

  _checkExistFile(int stuffId) async {
    state = state.copyWith(existFileState: Loading());
    //TODO вынести в сервис, а лучше в use_case
    final isExist = await (File('/storage/emulated/0/Download/qr-code-$stuffId.png')).exists();
    state = state.copyWith.call(existFileState: Successful(isExist));
  }

  downloadFile(ByteData data) async {
    Uint8List pngBytes = data.buffer.asUint8List();
    File imgFile  = File('/storage/emulated/0/Download/qr-code-$stuffId.png');
    state = state.copyWith.call(downloadState: Loading());
    (await TaskEither.tryCatch(
            () async => await imgFile.writeAsBytes(pngBytes),
            (error, stackTrace) => const AppFailure(message: 'Не удалось сохранить файл')
    )
        .run())
        .match(
            (l) => state = state.copyWith.call(downloadState: Error(l.message)),
            (r) => state = state.copyWith.call(downloadState: Successful(true), existFileState: Successful(true))
    );
  }
}