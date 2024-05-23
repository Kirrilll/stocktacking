import 'package:flutter/cupertino.dart';
import 'package:fpdart/src/either.dart';
import 'package:stocktacking/core/utils/failure.dart';
import 'package:stocktacking/features/stock/data/dtos/storage_dto.dart';
import 'package:stocktacking/features/stuff/data/data_sources/remote_stuff_keeping_report_data_source.dart';
import 'package:stocktacking/features/stuff/data/dtos/stuff_keeping_report_dto.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseStuffKeepingDataSource implements RemoteStuffKeepingReportDataSource {

  final SupabaseClient supabaseClient;

  const SupabaseStuffKeepingDataSource(this.supabaseClient);

  static const _baseReportsSelectQuery = '''
           id,
          item_id,
          created_at,
          comment_start,
          user_start: user_start_id(id, name),
          is_broken_start,
          closed_at,
          is_broken_end,
          user_end: user_end_id(id, name),
          comment_end,
          stock: branch_id(id, name)
        ''';

  @override
  Future<Either<IFailure, List<StuffKeepingReportDto>>> getStuffReports(int stuffId) async {
    return Right(  (await supabaseClient
        .from('reports')
        .select(_baseReportsSelectQuery)
        .eq('item_id', stuffId)
    ).map((res) => StuffKeepingReportDto.fromMap(res)).toList());

  }

  @override
  Future<Either<IFailure, StuffKeepingReportDto>> endReport({
    required bool isBroken,
    required int userId,
    int? storageId,
    required int reportId,
    int? stockId,
    String? comment
  }) async {
    final res = await supabaseClient
        .from('reports')
        .update({
          'branch_id': stockId,
          'storage_id': storageId,
          'user_end_id': userId,
          'comment_end': comment,
          'is_broken_end': isBroken,
          'closed_at':  DateTime.now().toString()
        })
        .eq('id', reportId)
        .select(_baseReportsSelectQuery)
        .single();
    return Right(StuffKeepingReportDto.fromMap(res));
  }

  @override
  Future<Either<IFailure, StuffKeepingReportDto>> createStuffReport({required bool isBroken, required int stuffId, required int userId, String? comment}) async {
    try {
      final res = (await supabaseClient
          .from('reports')
          .insert({
        'created_at': DateTime.now().toString(),
        'item_id': stuffId,
        'is_broken_start': isBroken,
        'comment_start': comment,
        'user_start_id': userId
      })
          .select(_baseReportsSelectQuery)
          .single()
      );
      return Right(StuffKeepingReportDto.fromMap(res));
    }
    catch(e, stackTrace) {
      debugPrint('ERROR WHILE CREATE REPORT - $e');
      return const Left(AppFailure(message:  'Не удалось создать репорт'));
    }

  }

  @override
  Future<Either<IFailure, StuffKeepingReportDto?>> getFirstUnfinishedReport(int stuffId) async {
    final res = await supabaseClient
        .from('reports')
        .select(_baseReportsSelectQuery)
        .eq('item_id', stuffId)
        .isFilter('closed_at', null)
        .single();
    if(res.isEmpty) return const Right(null);
    return Right(StuffKeepingReportDto.fromMap(res));
  }


}