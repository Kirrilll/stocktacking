import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:stocktacking/core/utils/extensions/date_formater.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff_keeping_info.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff_keeping_report.dart';
import 'package:stocktacking/features/stuff/presentation/widgets/stuff_history_stage.dart';
import 'package:stocktacking/features/stuff/utils/storage_item_taking_extension.dart';

class StuffUsingHistoryItem extends StatelessWidget {
  const StuffUsingHistoryItem({super.key, required this.report});

  final StuffKeepingReport report;

  @override
  Widget build(BuildContext context) {

    final putInfo = report.putInfo;

    return ExpansionTile(
      title: Text('${report.takeInfo.time.format('hh:ss')}-${(report.putInfo?.time.format('hh:ss') ?? 'Сейчас')}'),
      childrenPadding: const EdgeInsets.all(16),
      backgroundColor: report.isBroken
          ? const Color(0xFFFF4545).withOpacity(0.05)
          : null,
      collapsedBackgroundColor: report.isBroken
          ? const Color(0xFFFF4545).withOpacity(0.05)
          : null,
      shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          side: BorderSide(
              color: report.isBroken
                  ? const Color(0xFFFF4545).withOpacity(0.5)
                  : const Color(0xFF13181A).withOpacity(0.45),
              width: 1
          )
      ),
      collapsedShape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          side: BorderSide(
              color: report.isBroken
                  ? const Color(0xFFFF4545).withOpacity(0.5)
                  : const Color(0xFF13181A).withOpacity(0.45),
              width: 1
          )
      ),
      children: [
        StuffHistoryStage.take(takeInfo: report.takeInfo),
        const Divider(),
        putInfo != null
            ? StuffHistoryStage.put(putInfo: putInfo)
            : const Text('В использовании')
      ],
    );
  }
}
