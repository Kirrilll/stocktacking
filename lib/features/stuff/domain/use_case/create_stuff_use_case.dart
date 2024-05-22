import 'dart:io';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/core/utils/use_case_base.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stuff/domain/repositories/stuff_repository.dart';
import 'package:stocktacking/features/stuff/domain/use_case/take_stuff_use_case.dart';

part 'create_stuff_use_case.freezed.dart';

@freezed
class CreateStuffArgs with _$CreateStuffArgs{
  factory CreateStuffArgs({
    required String name,
    required XFile image,
    StorageItem? storageItem,
    required int orgId,
    required int userId,
    @Default(1) int count
  }) =_CreateStuffArgs;
}

class CreateStuffUseCase implements UseCase<Future<Either<IFailure, List<(int, String)>>>, CreateStuffArgs> {

  final StuffRepository stuffRepository;
  final TakeStuffUseCase takeStuffUseCase;

  const CreateStuffUseCase(this.stuffRepository, this.takeStuffUseCase);

  @override
  Future<Either<IFailure, List<(int, String)>>> execute(CreateStuffArgs args) async {
    final uploadPathRes = await stuffRepository.uploadFile(image: args.image, name: args.name, orgId: args.orgId);
    if(uploadPathRes.isLeft()) return Left(uploadPathRes.getLeft().getOrElse(() => const AppFailure(message: 'Упс.. что-то пошло нет так')));
    final uploadPath = uploadPathRes.getOrElse((l) => '');
    final (storageId, stockId) = args.storageItem == null
        ? (null, null)
        : switch(args.storageItem) {
            Stock(:final id) => (null, id),
            Storage(:final id, :final stockId) => (id, stockId),
            _ => (null, null)
        };
    return (await stuffRepository.createStuff(
        imageUrl: uploadPath,
        name: args.name,
        orgId: args.orgId,
        storageId: storageId,
        stockId: stockId,
        count: args.count
    ))
        .match(
            (l) => Left(l),
            (r) async {
              await Future.wait(r.map((e) => takeStuffUseCase.execute(
                  TakeStuffArgs(
                      userId: args.userId,
                      stuffId: e.$1,
                      isBroken: false
                  ))));
              return Right(r);
            }
    );

  }

}