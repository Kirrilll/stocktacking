import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/features/stuff/data/data_sources/mock_remote_data_source.dart';
import 'package:stocktacking/features/stuff/data/data_sources/mock_remote_stuff_keeping_data_source.dart';
import 'package:stocktacking/features/stuff/data/data_sources/remote_stuff_data_source.dart';
import 'package:stocktacking/features/stuff/data/data_sources/remote_stuff_keeping_report_data_source.dart';
import 'package:stocktacking/features/stuff/data/repositories/stuff_repository_impl.dart';
import 'package:stocktacking/features/stuff/domain/repositories/stuff_repository.dart';
import 'package:stocktacking/features/stuff/domain/use_case/get_user_stuff_use_case.dart';

import '../../domain/entities/stuff.dart';

part 'stuff_providers.g.dart';

@riverpod
RemoteStuffDataSource remoteStuffDataSource(RemoteStuffDataSourceRef ref) {
  return MockStuffRemoteDataSource();
}
@riverpod
StuffRepository stuffRepository(StuffRepositoryRef ref) {
  final remoteDataSource = ref.watch(remoteStuffDataSourceProvider);
  return StuffRepositoryImpl(remoteDataSource);
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