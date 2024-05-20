import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/core/riverpod/async_state.dart';
import 'package:stocktacking/features/credential/domain/entities/credential.dart';
import 'package:stocktacking/features/credential/presentation/notifiers/credential_notifier.dart';
import 'package:stocktacking/features/stock/presentation/providers/stock_providers.dart';

import '../../domain/entities/storage_base.dart';

part 'storage_create_page_notifier.g.dart';

@riverpod
class StorageAddPageNotifier extends _$StorageAddPageNotifier {
  @override
  AsyncState<StorageBase> build() {
    return AsyncState.initial();
  }

  void setupOnError(void Function(String error) onError) => ref.listenSelf((previous, curr) {
    if(curr is Error) {
      onError('Что-то пошло не так(');
    }
  });

  void setupOnSuccessful(void Function() onSuccessful) => ref.listenSelf((previous, curr) {
    if(curr is Successful) onSuccessful();
  });

  createStock({required String name, required String address}) async {
    final credential = ref.read(credentialNotifierProvider);
    if(credential is Authorised) {
      state = AsyncState.loading();
      (await ref
          .read(stockRepositoryProvider)
          .createStock(orgId: credential.profile?.orgId ?? -1, title: name, address: address))
          .match(
              (l) => state = AsyncState.error(l.message),
              (r) {
                state = AsyncState.successful(r);
              }
      );
    }
  }

  createStorage({required String name, required int? parentStorageId, required int stockId}) async {
    final credential = ref.read(credentialNotifierProvider);
    if(credential is Authorised) {
      state = AsyncState.loading();
      (await ref
          .read(stockRepositoryProvider)
          .createStorage(stockId: stockId, parentStorageId: parentStorageId, name: name ))
          .match(
              (l) => state = AsyncState.error(l.message),
              (r) => state = AsyncState.successful(r)
      );
    }
  }

}