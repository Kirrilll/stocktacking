import 'package:fpdart/fpdart.dart';
import 'package:fpdart/src/either.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stuff/data/data_sources/remote_stuff_data_source.dart';
import 'package:stocktacking/features/stuff/data/dtos/stuff_dto.dart';

class MockStuffRemoteDataSource implements RemoteStuffDataSource {

  static final List<StuffDto> _mockedUsingData = [];
  
  static final List<StuffDto> _mockedUnusedData = [];
  

  @override
  Future<Either<IFailure, List<StuffDto>>> getUsingStuff() async {
    return await TaskEither<IFailure, List<StuffDto>>
        .rightTask(Task(() => Future.delayed(const Duration(milliseconds: 500), () => _mockedUsingData)))
        .run();
  }

  @override
  Future<Either<IFailure, void>> startUsingStuff({required DateTime time, required bool isBroken, String? comment, required int storageId}) async {
    return Future.delayed(const Duration(milliseconds: 200));
  }

  @override
  Future<Either<IFailure, void>> stopUsingStuff({required DateTime time, required bool isBroken, String? comment, required int storageId}) {
    return Future.delayed(const Duration(milliseconds: 200));
  }

  @override
  Future<Either<IFailure, StuffDto>> getStuffById(int stuffId) async {
    return await TaskEither(() => Future.delayed(
        const Duration(milliseconds: 300),
            () => Either.fromNullable(_mockedUnusedData.where((stuff) => stuff.id == stuffId).firstOrNull,
                () => const NotFoundFailure(message: 'Не удалось найти предмет с таким id')))
    )
        .run();
  }

}