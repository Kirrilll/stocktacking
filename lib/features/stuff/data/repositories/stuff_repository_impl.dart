import 'package:fpdart/src/either.dart';
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

}