import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/features/credential/domain/entities/credential.dart';
import 'package:stocktacking/features/credential/presentation/notifiers/credential_notifier.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff.dart';
import 'package:stocktacking/features/stuff/presentation/providers/stuff_providers.dart';

part 'using_stuff_notifier.g.dart';

@Riverpod(keepAlive: true)
class UsingStuffNotifier extends _$UsingStuffNotifier {
  @override
  Future<List<(int, String)>> build() async {
    final credential = ref.watch(credentialNotifierProvider);
    return switch(credential) {
      Authorised(:final profile) => (await ref
          .read(stuffRepositoryProvider)
          .getStuffByUserId(profile?.id ?? -1)).match(
              (l) => throw l,
              (r) => r
      ),
      _ => []
    };
  }


  addStuff((int, String) stuff) => state = switch(state) {
    AsyncData(:final value) => AsyncData([...value, stuff]),
    _ => state
  };

  deleteStuff(int stuffId) => state = switch(state) {
    AsyncData(:final value) => AsyncData(value
        .where((stuff) => stuff.$1 != stuffId)
        .toList()),
    _ => state
  };
}