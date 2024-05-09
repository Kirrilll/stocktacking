import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff.dart';

abstract class StuffRepository {
  Future<Either<IFailure, List<Stuff>>> getUserKeepingStuff();
  Future<Either<IFailure, List<Stuff>>> getStuffBySearchAndFilters(String searchParams);
  Future<Either<IFailure, Stuff>> getStuffById(int id);
}