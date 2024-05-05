import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff.dart';

abstract class UsingStuffRepository {
  Future<List<Stuff>> getAll({bool refresh = false});
  Future<void> addOne(Stuff stuff);
  Future<void> deleteOne(int stuffId);
}