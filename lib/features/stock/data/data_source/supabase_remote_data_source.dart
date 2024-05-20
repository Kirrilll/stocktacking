import 'package:flutter/cupertino.dart';
import 'package:fpdart/src/either.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stock/data/data_source/stock_remote_data_source.dart';
import 'package:stocktacking/features/stock/data/dtos/storage_dto.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseStockRemoteDataSource implements StockRemoteDataSource {

  final SupabaseClient supabaseClient;

  const SupabaseStockRemoteDataSource(this.supabaseClient);

  @override
  Future<Either<IFailure, StockDto>> createStock({required int orgId, required String title, required String address}) async {
    final res = (await supabaseClient.from('branches')
        .insert({'name': title, 'lat': '0', 'lon': '0', 'address': address, 'organization_id': orgId})
        .select()
        .single()
    ).map((key, value) => MapEntry(key, value.toString()));
    if(res.isEmpty) return const Left(BadRequestFailure(message: 'Что-то пошло не так'));
    return Right( StockDto(
        id: int.parse(res['id'] ?? '-1'),
        title: res['name'] ?? '',
        address: res['address'] ?? '',
        latitude:  0,
        longitude: 0
    ));
  }

  @override
  Future<Either<IFailure, StorageDto>> createStorage({required String name, required int? parentStorageId, required int stockId}) {
    // TODO: implement createStorage
    throw UnimplementedError();
  }

  @override
  Future<Either<IFailure, List<StockDto>>> getOrgStocks(int ordId) async {
    debugPrint('ORG ID - $ordId');
    final res = (await supabaseClient.from('branches')
        .select()
        .eq('organization_id', ordId)
    )
        .map((e) => e
        .map((key, value) => MapEntry(key, value.toString())))
        .map((entry) => StockDto(id: int.parse(entry['id'] ?? '-1'), title: entry['name'] ?? '', address: entry['address'] ?? '', latitude:  0, longitude: 0
    ))
        .toList();



    return Right(res);
  }



  @override
  Future<Either<IFailure, List<StorageItemDto>>> searchStorage(String search) {
    // TODO: implement searchStorage
    throw UnimplementedError();
  }

  @override
  Future<Either<IFailure, List<StorageDto>>> getStorageOfStorage({required int? parentStorageId, required int stockId, required int orgId}) {
    // TODO: implement getStorageOfStorage
    throw UnimplementedError();
  }

}