import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff.dart';

abstract class StuffRepository {
  Future<Either<IFailure, List<Stuff>>> getUserKeepingStuff();
  Future<Either<IFailure, List<Stuff>>> getStuffBySearchAndFilters(String searchParams);
  Future<Either<IFailure, Stuff>> getStuffById(int id);

  Future<Either<IFailure, String>> uploadFile({required XFile image, required String name, required int orgId});
  Future<Either<IFailure, List<(int, String)>>> createStuff({
    required String imageUrl,
    required String name,
    required int orgId,
    required StorageItem storage,
    int count = 1
  });

}