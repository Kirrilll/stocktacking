import 'dart:io';

import 'package:fpdart/src/either.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/credential/domain/entities/profile.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stuff/adapters/stuff_adapter.dart';
import 'package:stocktacking/features/stuff/data/data_sources/remote_stuff_data_source.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff.dart';
import 'package:stocktacking/features/stuff/domain/repositories/stuff_repository.dart';

class StuffRepositoryImpl implements StuffRepository {

  final RemoteStuffDataSource remoteStuffDataSource;
  final StuffAdapter _stuffAdapter = const StuffAdapter();

  const StuffRepositoryImpl(this.remoteStuffDataSource);

  @override
  Future<Either<IFailure, Stuff>> getStuffById(int id) async {
    return (await remoteStuffDataSource
        .getStuffById(id))
        .map((_stuffAdapter.fromDto));
  }

  @override
  Future<Either<IFailure, List<Stuff>>> getStuffBySearchAndFilters(String searchParams) {
    // TODO: implement getStuffBySearchAndFilters
    throw UnimplementedError();
  }

  @override
  Future<Either<IFailure, List<Stuff>>> getUserKeepingStuff() async {
    return (await remoteStuffDataSource
        .getUsingStuff())
        .map((a) => a
          .map(_stuffAdapter.fromDto)
          .toList());
  }


  @override
  Future<Either<IFailure, String>> uploadFile({required XFile image, required String name, required int orgId}) async {
    return await remoteStuffDataSource.uploadStuffImage(image: image, name: name, orgId: orgId);
  }

  @override
  Future<Either<IFailure, List<(int, String)>>> createStuff({
    required String imageUrl,
    required String name,
    required int orgId,
    required StorageItem storage,
    int count = 1
  }) {
    final (userId, storageId, stockId) = switch(storage) {
      Stock(:final id) => (null, null, id),
      User(:final userId) => (userId, null, null),
      Storage(:final id, :final stockId) => (null, id, stockId)
    };
    return remoteStuffDataSource.createStuff(imageUrl: imageUrl, name: name, orgId: orgId, userId: userId, stockId: stockId, storageId: storageId, count: count);
  }

}