import 'package:fpdart/fpdart.dart';
import 'package:fpdart/src/either.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stock/data/dtos/storage_dto.dart';
import 'package:stocktacking/features/stuff/data/data_sources/remote_stuff_data_source.dart';
import 'package:stocktacking/features/stuff/data/dtos/stuff_dto.dart';
import 'package:stocktacking/features/stuff/data/dtos/stuff_option_dto.dart';

class MockStuffRemoteDataSource implements RemoteStuffDataSource {

  
  static final List<StuffDto> _mockedUnusedData = [
    // StuffDto(
    //     id: 1,
    //     imageUrl: 'https://ae01.alicdn.com/kf/S5f1e73e78bb744e98d56e49c729269b49.jpg',
    //     title: 'Мышь вертикальная',
    //     options: [
    //       const StuffOptionDto(code: 'Type', title: 'Тип', value: 'Беспроводная', type: 'text'),
    //       const StuffOptionDto(code: 'dpi', title: 'dpi', value: '1200', type: 'num'),
    //       const StuffOptionDto(code: 'is_gaming', title: 'Игровая', value: 'true', type: 'logic'),
    //     ],
    //     storageDto: StorageDto(id: 1, title: 'Шкаф', storageDto: StockDto(id: 1, address: 'ул. Жукова, д. 155', longitude: 0, latitude: 0, title: '5 корпус')),
    //     isBroken: false
    // ),
    StuffDto(
        id: 2,
        imageUrl: 'https://img.health-tehnika.ru/images/products/1/1392/332785008/kompyuternaya-mysh-ergomouse-em03.jpg',
        title: 'Мышь крабовая',
        options: [
          const StuffOptionDto(code: 'Type', title: 'Тип', value: 'Проводная', type: 'text'),
          const StuffOptionDto(code: 'dpi', title: 'dpi', value: '2200', type: 'num'),
          const StuffOptionDto(code: 'is_gaming', title: 'Игровая', value: 'true', type: 'logic'),
        ],
        storageDto: UserDto(id: 1, title: 'Кирилл'),
        isBroken: true,
        comment: 'Колесико не работает(('
    ),

    StuffDto(
        id: 3,
        imageUrl: 'https://main-cdn.sbermegamarket.ru/big2/hlr-system/291/655/736/111/212/2/600006498697b9.jpeg',
        title: 'Компьютер 1',
        options: [
          const StuffOptionDto(code: 'PO', title: 'ПО', value: 'MsSQL, PyCharm, Notepad', type: 'list'),
          const StuffOptionDto(code: 'Videocard', title: 'Видеокарта', value: 'Geforce RTX 4050', type: 'text'),
        ],
        storageDto: UserDto(id: 2, title: 'Павел Федорович'),
        isBroken: false
    ),
  ];
  
  List<StuffDto> get _usingStuff => _mockedUnusedData
      .where((stuff) => stuff.storageDto is UserDto && stuff.storageDto.id == 1)
      .toList();

  @override
  Future<Either<IFailure, List<StuffDto>>> getUsingStuff() async {
    return await TaskEither<IFailure, List<StuffDto>>
        .rightTask(Task(() => Future.delayed(const Duration(milliseconds: 500), () => _usingStuff)))
        .run();
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