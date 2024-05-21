import 'dart:io';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/core/utils/use_case_base.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stuff/domain/repositories/stuff_repository.dart';

part 'create_stuff_use_case.freezed.dart';

@freezed
class CreateStuffArgs with _$CreateStuffArgs{
  factory CreateStuffArgs({
    required String name,
    required XFile image,
    required StorageItem storageItem,
    required int orgId,
    @Default(1) int count
  }) =_CreateStuffArgs;
}

class CreateStuffUseCase implements UseCase<Future<Either<IFailure, List<(int, String)>>>, CreateStuffArgs> {

  final StuffRepository stuffRepository;

  const CreateStuffUseCase(this.stuffRepository);

  @override
  Future<Either<IFailure, List<(int, String)>>> execute(CreateStuffArgs args) async {
    final uploadPathRes = await stuffRepository.uploadFile(image: args.image, name: args.name, orgId: args.orgId);
    if(uploadPathRes.isLeft()) return Left(uploadPathRes.getLeft().getOrElse(() => const AppFailure(message: 'Упс.. что-то пошло нет так')));
    final uploadPath = uploadPathRes.getOrElse((l) => '');
    return await stuffRepository.createStuff(imageUrl: uploadPath, name: args.name, orgId: args.orgId, storage: args.storageItem, count: args.count);
  }

}