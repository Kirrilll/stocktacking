import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/features/stuff/data/repositories/stuff_keeping_repository_impl.dart';
import 'package:stocktacking/features/stuff/domain/repositories/stuff_keeping_report_repository.dart';
import 'package:stocktacking/features/stuff/domain/use_case/take_stuff_use_case.dart';
import 'package:stocktacking/features/stuff/presentation/notifiers/using_stuff_notifier.dart';
import 'package:stocktacking/features/stuff/presentation/providers/stuff_providers.dart';
import '../../data/data_sources/mock_remote_stuff_keeping_data_source.dart';
import '../../data/data_sources/remote_stuff_keeping_report_data_source.dart';

part 'stuff_keeping_providers.g.dart';

@riverpod
RemoteStuffKeepingReportDataSource remoteStuffKeepingReportDataSource(RemoteStuffKeepingReportDataSourceRef ref) {
  return MockRemoteStuffKeepingDataSource();
}

@riverpod
StuffKeepingReportRepository stuffKeepingReportRepository(StuffKeepingReportRepositoryRef ref) {
  final remoteDataSource = ref.watch(remoteStuffKeepingReportDataSourceProvider);
  return StuffKeepingRepositoryImpl(remoteDataSource);
}


@riverpod
Future<void> useTakeStuffUseCase(UseTakeStuffUseCaseRef ref, {
  required int stuffId,
  bool isBroken = false,
  String? comment
}) async {
  final stuffKeepingRepository = ref.watch(stuffKeepingReportRepositoryProvider);
  return (await TakeStuffUseCase(stuffKeepingRepository).execute((stuffId, isBroken, comment)))
      .match(
          (l) => throw l,
          (r) async {
            final stuff = await ref.watch(getStuffByIdProvider.call(stuffId).future);
            ref.read(usingStuffNotifierProvider.notifier).addStuff((stuff.id, stuff.title));
          }
  );
}