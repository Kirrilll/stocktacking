import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/core/supabase/supabase_provider.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/credential/domain/entities/credential.dart';
import 'package:stocktacking/features/credential/presentation/notifiers/credential_notifier.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stuff/data/data_sources/mock_remote_data_source.dart';
import 'package:stocktacking/features/stuff/data/data_sources/mock_remote_stuff_keeping_data_source.dart';
import 'package:stocktacking/features/stuff/data/data_sources/remote_stuff_data_source.dart';
import 'package:stocktacking/features/stuff/data/data_sources/remote_stuff_keeping_report_data_source.dart';
import 'package:stocktacking/features/stuff/data/data_sources/supabase_remote_data_source.dart';
import 'package:stocktacking/features/stuff/data/repositories/stuff_repository_impl.dart';
import 'package:stocktacking/features/stuff/domain/repositories/stuff_repository.dart';
import 'package:stocktacking/features/stuff/domain/use_case/create_stuff_use_case.dart';
import 'package:stocktacking/features/stuff/domain/use_case/get_user_stuff_use_case.dart';

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
  return switch(credential) {
    Authorised(:final profile) => (await CreateStuffUseCase(stuffRepository)
        .execute(CreateStuffArgs(name: title, image: file, storageItem: storage ?? User(profile?.name ?? '', profile?.id ?? 0), orgId: profile?.orgId ?? -1, count: count ?? 1)))
        .match((l) => throw l, (r) => r),
    _ => throw const UnauthorisedFailure()
  };
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