import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/core/utils/use_case_base.dart';

class PutStuffParams {
  final int stuffId;
  final int storageId;
  final bool isBroken;
  final String? comment;

  const PutStuffParams({
    required this.stuffId,
    required this.storageId,
    required this.isBroken,
    this.comment,
  });

}

class PutStuffUseCase implements UseCase<Future<Either<IFailure, bool>>, PutStuffParams> {
  @override
  Future<Either<IFailure, bool>> execute(PutStuffParams args) {
    // TODO: implement execute
    throw UnimplementedError();
  }

}