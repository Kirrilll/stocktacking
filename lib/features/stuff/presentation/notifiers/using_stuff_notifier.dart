import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff.dart';
import 'package:stocktacking/features/stuff/presentation/providers/stuff_providers.dart';

part 'using_stuff_notifier.g.dart';

@Riverpod(keepAlive: true)
class UsingStuffNotifier extends _$UsingStuffNotifier {
  @override
  Future<List<Stuff>> build() async =>
    (await ref
        .read(stuffRepositoryProvider)
        .getUserKeepingStuff()
    ).match(
            (l) => throw l,
            (r) => r
    );

  addStuff(Stuff stuff) => state = switch(state) {
    AsyncData(:final value) => AsyncData([...value, stuff]),
    _ => state
  };

  deleteStuff(int stuffId) => state = switch(state) {
    AsyncData(:final value) => AsyncData(value
        .where((stuff) => stuff.id != stuffId)
        .toList()),
    _ => state
  };
}