import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/core/utils/use_case_base.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stuff/domain/repositories/stuff_keeping_report_repository.dart';
import 'package:stocktacking/features/stuff/domain/repositories/stuff_repository.dart';

class PutStuffParams {
  final int reportId;
  final StorageItem item;
  final int userId;
  final bool isBroken;
  final String? comment;

  const PutStuffParams({
    required this.reportId,
    required this.item,
    required this.userId,
    required this.isBroken,
    this.comment,
  });

}

class PutStuffUseCase implements UseCase<Future<Either<IFailure, bool>>, PutStuffParams> {

  final StuffKeepingReportRepository stuffKeepingReportRepository;
  final StuffRepository stuffRepository;

  const PutStuffUseCase(this.stuffKeepingReportRepository, this.stuffRepository);

  @override
  Future<Either<IFailure, bool>> execute(PutStuffParams args) async {

    //2. Закончить репорт
    //3. Изменить у предмета userId - null, storageId- value, stockId - value

   return (await stuffKeepingReportRepository.endStuffReport(
        reportId: args.reportId,
        isBroken: args.isBroken,
        userId: args.userId,
        item: args.item,
        comment: args.comment
    ))
        .match(
            (l) => Left(l),
            (r) async {
              final (stockId, storageId) = switch(args.item) {
                Stock(:final id) => (id, null),
                Storage(:final id, :final stockId) => (id, stockId),
                _ => (0, 0)
              };

              return (await stuffRepository.updateStuff(
                  id: r.stuffId,
                  storageId: storageId,
                  stockId: stockId,
                  isBroken: args.isBroken,
                  comment: args.comment,
                  userId: null
              )).map((a) => true);
            }
    );
  }

}