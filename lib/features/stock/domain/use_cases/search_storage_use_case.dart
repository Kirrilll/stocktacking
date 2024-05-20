import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/core/utils/use_case_base.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stock/domain/repositories/stock_repository.dart';

class SearchStorageUseCase implements UseCase<Future<Either<IFailure, List<StorageItem>>>, (String, int)> {

  final StockRepository stockRepository;

  const SearchStorageUseCase(this.stockRepository);

  @override
  Future<Either<IFailure, List<StorageItem>>> execute((String, int) args) async {
    final (searchParam, orgId) = args;

    return Right ((await Future.wait([
      stockRepository.searchStocks(searchParam, orgId),
      stockRepository.getStoragesBySearch(searchParam, orgId)
    ]))
        .map((e) => e
        .match(
            (l) => List<StorageItem>.empty(),
            (r) => r
    ))
        .reduce((value, element) => [...value, ...element]));
  }

}