import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/core/utils/use_case_base.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff.dart';
import 'package:stocktacking/features/stuff/domain/repositories/stuff_repository.dart';

class SearchParams {
  final String? search;
  final int? storageId;
  final int? stockId;

  const SearchParams({
    this.search,
    this.storageId,
    this.stockId
  });

}

class SearchStuffUseCase implements UseCase<Future<Either<IFailure, List<Stuff>>>, SearchParams> {

  final int orgId;
  final StuffRepository stuffRepository;

  const SearchStuffUseCase(this.stuffRepository, this.orgId);

  @override
  Future<Either<IFailure, List<Stuff>>> execute(SearchParams args) async {
    return await stuffRepository.getStuffBySearchAndStorageId(orgId, args.search, args.storageId, args.stockId);
  }

}