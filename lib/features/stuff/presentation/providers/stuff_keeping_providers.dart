import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/core/supabase/supabase_provider.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/credential/domain/entities/credential.dart';
import 'package:stocktacking/features/credential/presentation/notifiers/credential_notifier.dart';
import 'package:stocktacking/features/stuff/data/data_sources/supabase_stuff_keeping_data_source.dart';
import 'package:stocktacking/features/stuff/data/repositories/stuff_keeping_repository_impl.dart';
import 'package:stocktacking/features/stuff/domain/repositories/stuff_keeping_report_repository.dart';
import 'package:stocktacking/features/stuff/domain/use_case/retake_stuff_use_case.dart';
import 'package:stocktacking/features/stuff/domain/use_case/take_stuff_use_case.dart';
import 'package:stocktacking/features/stuff/presentation/notifiers/using_stuff_notifier.dart';
import 'package:stocktacking/features/stuff/presentation/providers/stuff_providers.dart';
import '../../data/data_sources/remote_stuff_keeping_report_data_source.dart';
import '../../domain/entities/stuff_keeping_report.dart';

part 'stuff_keeping_providers.g.dart';

@riverpod
RemoteStuffKeepingReportDataSource remoteStuffKeepingReportDataSource(RemoteStuffKeepingReportDataSourceRef ref) {
  final supabaseClient = ref.watch(supabaseClientProvider);
  return SupabaseStuffKeepingDataSource(supabaseClient);
}

@riverpod
StuffKeepingReportRepository stuffKeepingReportRepository(StuffKeepingReportRepositoryRef ref) {
  final remoteDataSource = ref.watch(remoteStuffKeepingReportDataSourceProvider);
  return StuffKeepingRepositoryImpl(remoteDataSource);
}

@riverpod
Future<List<StuffKeepingReport>> getStuffReports(GetStuffReportsRef ref, int stuffId) async {
  final stuffReportsRepository = ref.watch(stuffKeepingReportRepositoryProvider);
  return (await stuffReportsRepository
      .getReportsByStuffId(stuffId))
      .match(
          (l) => throw l,
          (r) => r
  );
}


@riverpod
Future<void> useTakeStuffUseCase(UseTakeStuffUseCaseRef ref, {
  required int stuffId,
  bool isBroken = false,
  String? comment
}) async {
  final stuffKeepingRepository = ref.watch(stuffKeepingReportRepositoryProvider);
  final stuffRepository = ref.watch(stuffRepositoryProvider);
  final credential = ref.watch(credentialNotifierProvider);
  return switch(credential) {
    Authorised(:final profile) => (await TakeStuffUseCase(stuffKeepingRepository, stuffRepository)
        .execute(TakeStuffArgs(userId: profile?.id ?? -1, stuffId: stuffId, isBroken: isBroken, comment: comment)))
        .match(
            (l) => throw l,
            (r) {
              ref.read(usingStuffNotifierProvider.notifier).addStuff(r);
            }
    ),
   _ => throw const UnauthorisedFailure()
  };
}

@riverpod
Future<void> useRetakeStuffUseCase(UseRetakeStuffUseCaseRef ref, {
  required int stuffId,
  required int reportId,
  required int prevUserId
}) async {
  final stuffKeepingRepository = ref.watch(stuffKeepingReportRepositoryProvider);
  final stuffRepository = ref.watch(stuffRepositoryProvider);
  final credential = ref.watch(credentialNotifierProvider);
  if(credential is! Authorised) throw const UnauthorisedFailure();
  return (await RetakeStuffUseCase(stuffKeepingRepository, stuffRepository)
      .execute(RetakeStuffArgs(reportId: reportId, prevUserId: prevUserId, userId: credential.profile?.id ?? -1, stuffId: stuffId)))
      .match(
          (l) => throw l,
          (r) {
            ref.read(usingStuffNotifierProvider.notifier).addStuff(r);
          }
  );
}