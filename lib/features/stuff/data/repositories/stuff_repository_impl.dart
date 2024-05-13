import 'package:fpdart/src/either.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/credential/domain/entities/profile.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stuff/data/data_sources/remote_stuff_data_source.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff.dart';
import 'package:stocktacking/features/stuff/domain/repositories/stuff_repository.dart';

class StuffRepositoryImpl implements StuffRepository {

  final RemoteStuffDataSource remoteStuffDataSource;

  const StuffRepositoryImpl(this.remoteStuffDataSource);

  @override
  Future<Either<IFailure, Stuff>> getStuffById(int id) {
    return Future.delayed(const Duration(milliseconds: 1500), () =>  Right(
      Stuff(
          id: 3,
          title: 'Мышь компьютерная',
          image: 'https://dartoffice.ru/12626052-tm_large_default/mysh-kompyuternaya-logitech-mouse-m100-black-usb.jpg',
          storage: User('Кирилл Андреевич', 1),
          categoryId: null,
        options: []
      )
    ));
  }

  @override
  Future<Either<IFailure, List<Stuff>>> getStuffBySearchAndFilters(String searchParams) {
    // TODO: implement getStuffBySearchAndFilters
    throw UnimplementedError();
  }

  @override
  Future<Either<IFailure, List<Stuff>>> getUserKeepingStuff() async {
    return Future.delayed(const Duration(milliseconds: 1500), () =>  Right([
      Stuff(
          id: 1,
          title: 'Мышь',
          image: 'https://dartoffice.ru/12626052-tm_large_default/mysh-kompyuternaya-logitech-mouse-m100-black-usb.jpg',
          storage: User('Кирилл Андреевич', 1),
          categoryId: null,
          options: []
      )
    ]));
  }

}