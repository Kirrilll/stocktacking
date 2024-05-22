import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stuff/data/dtos/stuff_keeping_report_dto.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff_keeping_info.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff_keeping_report.dart';

class StuffReportAdapter {


  StuffKeepingReport fromDto(StuffKeepingReportDto stuffKeepingReportDto) {
    return StuffKeepingReport(
        id: stuffKeepingReportDto.id,
        stuffId: stuffKeepingReportDto.stuffId,
        takeInfo: StuffKeepingInfo(
            time: stuffKeepingReportDto.takeTime,
            user: User(stuffKeepingReportDto.takeUser.title, stuffKeepingReportDto.takeUser.id),
            isBroken: stuffKeepingReportDto.takeIsBroken,
            comment: stuffKeepingReportDto.takeComment
        ),
        putInfo: stuffKeepingReportDto.putTime != null
            ? StuffKeepingInfo(
                time: stuffKeepingReportDto.putTime ?? DateTime.now(),
                user: User(stuffKeepingReportDto.putUser?.title ?? '', stuffKeepingReportDto.putUser?.id ?? -1),
                isBroken: stuffKeepingReportDto.putIsBroken ?? false,
                comment: stuffKeepingReportDto.putComment
         )
            : null
    );
  }
}