import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stuff/data/dtos/stuff_dto.dart';

abstract class RemoteStuffDataSource {
  Future<Either<IFailure, List<StuffDto>>> getUsingStuff();
  Future<Either<IFailure, StuffDto>> getStuffById(int stuffId);
}