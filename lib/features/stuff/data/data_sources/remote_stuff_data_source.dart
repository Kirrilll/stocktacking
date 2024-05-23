import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stock/data/dtos/storage_dto.dart';
import 'package:stocktacking/features/stuff/data/dtos/stuff_dto.dart';

abstract class RemoteStuffDataSource {
  Future<Either<IFailure, List<(int, String)>>> getStuffByUserId(int userId);
  Future<Either<IFailure, StuffDto>> getStuffById(int stuffId);
  Future<Either<IFailure, List<StuffDto>>> searchStuff(String? search, int orgId, int? storageId, int? stockId);
  Future<Either<IFailure, List<(int, String)>>> createStuff({
    required String imageUrl,
    required String name,
    required int orgId,
    int? userId,
    int? storageId,
    int? stockId,
    int count = 1
});

  Future<Either<IFailure, StuffDto>> updateStuff({
    required int id,
    required int? storageId,
    required int? stockId,
    required int? userId,
    String? comment,
    bool isBroken = false
  });
  Future<Either<IFailure, String>> uploadStuffImage({required XFile image, required String name, required int orgId});
}