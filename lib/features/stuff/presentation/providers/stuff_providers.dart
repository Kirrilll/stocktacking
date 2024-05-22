import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/core/supabase/supabase_provider.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/credential/domain/entities/credential.dart';
import 'package:stocktacking/features/credential/presentation/notifiers/credential_notifier.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stuff/data/data_sources/remote_stuff_data_source.dart';
import 'package:stocktacking/features/stuff/data/data_sources/remote_stuff_keeping_report_data_source.dart';
import 'package:stocktacking/features/stuff/data/data_sources/supabase_remote_data_source.dart';
import 'package:stocktacking/features/stuff/data/repositories/stuff_repository_impl.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff_keeping_report.dart';
import 'package:stocktacking/features/stuff/domain/repositories/stuff_repository.dart';
import 'package:stocktacking/features/stuff/domain/use_case/create_stuff_use_case.dart';
import 'package:stocktacking/features/stuff/domain/use_case/get_user_stuff_use_case.dart';
import 'package:stocktacking/features/stuff/domain/use_case/put_stuff_use_case.dart';
import 'package:stocktacking/features/stuff/domain/use_case/take_stuff_use_case.dart';
import 'package:stocktacking/features/stuff/presentation/notifiers/using_stuff_notifier.dart';
import 'package:stocktacking/features/stuff/presentation/providers/stuff_keeping_providers.dart';

import '../../domain/entities/stuff.dart';

part 'stuff_providers.g.dart';

@riverpod
RemoteStuffDataSource remoteStuffDataSource(RemoteStuffDataSourceRef ref) {
  final supabaseClient = ref.watch(supabaseClientProvider);
  return SupabaseStuffRemoteDataSource(supabaseClient);
}
@riverpod
StuffRepository stuffRepository(StuffRepositoryRef ref) {
  final remoteDataSource = ref.watch(remoteStuffDataSourceProvider);
  return StuffRepositoryImpl(remoteDataSource);
}

@riverpod
Future<List<(int, String)>> createStuffUseCase(CreateStuffUseCaseRef ref, {
  required String title,
  required StorageItem? storage,
  required XFile file,
  int? count = 1
}) async {
  final credential = ref.watch(credentialNotifierProvider);
  final stuffRepository = ref.watch(stuffRepositoryProvider);
  final stuffReportRepository = ref.watch(stuffKeepingReportRepositoryProvider);
  return switch(credential) {
    Authorised(:final profile) => (await CreateStuffUseCase(stuffRepository, TakeStuffUseCase(stuffReportRepository, stuffRepository))
        .execute(CreateStuffArgs(
          name: title,
          image: file,
          userId: profile?.id ?? -1,
          storageItem: storage,
          orgId: profile?.orgId ?? -1, count: count ?? 1)))
        .match(
            (l) => throw l,
            (r) {
              for(final stuffShort in r) {
                ref.read(usingStuffNotifierProvider.notifier).addStuff(stuffShort);
              }
              return r;
            }
      ),
    _ => throw const UnauthorisedFailure()
  };
}

@riverpod
Future<StuffKeepingReport?> getUnfinishedReport(GetUnfinishedReportRef ref, int stuffId) async {
  final stuffReportRepository = ref.watch(stuffKeepingReportRepositoryProvider);
  return (await stuffReportRepository
      .getFirstUnfinishedReport(stuffId))
      .match(
          (l) => throw l,
          (r) => r);
}



@riverpod
Future<Stuff> getStuffById(GetStuffByIdRef ref, int stuffId) async {
  final stuffRepository = ref.watch(stuffRepositoryProvider);
  return (await stuffRepository.getStuffById(stuffId))
      .match(
          (l) => throw l,
          (r) => r
  );
}

@riverpod
Future<void> usePutStuffUseCase(UsePutStuffUseCaseRef ref, {
  required StorageItem item,
  required int reportId,
  bool isBroken = false,
  String? comment
}) async {
  final credential = ref.watch(credentialNotifierProvider);
  final stuffRepository = ref.watch(stuffRepositoryProvider);
  final stuffReportRepository = ref.watch(stuffKeepingReportRepositoryProvider);
  final usingStuffNotifier = ref.read(usingStuffNotifierProvider.notifier);
  return switch(credential) {
    Authorised(:final profile) => (await PutStuffUseCase(stuffReportRepository, stuffRepository)
        .execute(PutStuffParams(reportId: reportId, item: item, userId: profile?.id ?? -1, isBroken: isBroken, comment: comment)))
        .match(
            (l) => throw l,
            (r) => r
    ),
    _ => throw const UnauthorisedFailure()
  };
}
