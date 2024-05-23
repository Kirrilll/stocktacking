import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff.dart';

abstract class StuffRepository {
  Future<Either<IFailure, List<(int, String)>>> getStuffByUserId(int userId);
  Future<Either<IFailure, List<Stuff>>> getStuffBySearchAndStorageId(int orgId, String? search, int? storageId, int? stockId);
  Future<Either<IFailure, Stuff>> getStuffById(int id);

  Future<Either<IFailure, String>> uploadFile({required XFile image, required String name, required int orgId});
  Future<Either<IFailure, List<(int, String)>>> createStuff({
    required String imageUrl,
    required String name,
    required int orgId,
    int? storageId,
    int? stockId,
    int count = 1
  });

  Future<Either<IFailure, Stuff>> updateStuff({
    required int id,
    required int? storageId,
    required int? stockId,
    required int? userId,
    String? comment,
    bool isBroken = false
  });

}