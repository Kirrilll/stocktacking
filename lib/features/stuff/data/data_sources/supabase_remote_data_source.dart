import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:fpdart/src/either.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stock/data/dtos/storage_dto.dart';
import 'package:stocktacking/features/stuff/data/data_sources/remote_stuff_data_source.dart';
import 'package:stocktacking/features/stuff/data/dtos/stuff_dto.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseStuffRemoteDataSource implements RemoteStuffDataSource {

  final SupabaseClient supabaseClient;

  const SupabaseStuffRemoteDataSource(this.supabaseClient);



  @override
  Future<Either<IFailure, StuffDto>> getStuffById(int stuffId) {
    // TODO: implement getStuffById
    throw UnimplementedError();
  }

  @override
  Future<Either<IFailure, List<(int, String)>>> getStuffByUserId(int userId) async {
   return Right ((await supabaseClient
        .from('items')
        .select('id, name')
        .eq('user_id', userId))
        .map((e) => (e['id'] as int,  e['name'] as String))
       .toList()
   );

  }

  @override
  Future<Either<IFailure, List<StuffDto>>> searchStuff(String search) {
    // TODO: implement searchStuff
    throw UnimplementedError();
  }

  @override
  Future<Either<IFailure, String>> uploadStuffImage({required XFile image, required String name, required int orgId}) async {
    try {
      final filePath = 'public/${image.name}';
      final res = await supabaseClient
          .storage
          .from('stocktacking')
          .uploadBinary(filePath, await image.readAsBytes());
      final publicPath =supabaseClient.storage.from('stocktacking').getPublicUrl(filePath);
      return Right(publicPath);
    }
    catch(e) {
      return const Left(AppFailure(message: 'Не удалось загрузить картинку'));
    }

  }

  @override
  Future<Either<IFailure, List<(int, String)>>> createStuff({
    required String imageUrl,
    required String name,
    int? userId,
    int? stockId,
    int? storageId,
    required int orgId, int count = 1}) async {

    buildName(int index) => count != 1 ? '$name-$index' : name;

    try {
      final res = (await Future.wait(
          List
              .generate(count, (index) => supabaseClient
              .from('items')
              .insert({'name': buildName(index), 'photo_link': imageUrl, 'is_broken': false, 'user_id': userId, 'storage_id': storageId, 'branch_id': stockId})
              .select('id, name')
              .single()
          )
      )).map((e) => (e['id'] as int, e['name'] as String))
          .toList();
      return Right(res);
    }
    catch(e) {
      debugPrint('ERROR WHILE INSERT - $e');
      return const Left(AppFailure(message: 'Что-то пошло не так'));
    }

  }

}