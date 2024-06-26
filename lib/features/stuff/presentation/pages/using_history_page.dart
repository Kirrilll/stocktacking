import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stocktacking/core/presentation/app_bar/build_app_bar.dart';
import 'package:stocktacking/core/utils/extensions/date_formater.dart';
import 'package:stocktacking/core/utils/extensions/list_nullable_get.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff_keeping_info.dart';
import 'package:stocktacking/features/stuff/presentation/providers/stuff_keeping_providers.dart';
import 'package:stocktacking/features/stuff/presentation/widgets/stuff_using_history_item.dart';

import '../../domain/entities/stuff_keeping_report.dart';

class UsingHistoryPage extends ConsumerWidget {
  const UsingHistoryPage({super.key, required this.stuffId});

  final int stuffId;

  // late final _reports= [
  //   StuffKeepingReport(
  //     id: 1,
  //     stuffId: widget.stuffId,
  //     takeInfo: StuffKeepingInfo(
  //         isBroken: false,
  //         // place: Stock(1, 'Склад 2', 'Южная. д 55', (5.0, 1.3)),
  //         time: DateTime.now(),
  //         user: User('Дуров Андрей Павлович', 2)
  //     ),
  //     putInfo: StuffKeepingInfo(
  //         isBroken: false,
  //         // place: Stock(1,'Склад 3', 'Южная. д 55', (5.0, 1.3)),
  //         time: DateTime.now().add(const Duration(hours: 1)),
  //         user: User('Дуров Андрей Павлович', 2)
  //     )
  //   ),
  //   StuffKeepingReport(
  //       id: 1,
  //       stuffId: widget.stuffId,
  //       takeInfo: StuffKeepingInfo(
  //           isBroken: false,
  //           // place: Stock(1,'Склад 2', 'Южная. д 55', (5.0, 1.3)),
  //           time: DateTime.now().add(const Duration(days: 1)),
  //           user: User('Дуров Андрей Павлович', 2)
  //       ),
  //       putInfo: StuffKeepingInfo(
  //           isBroken: true,
  //           // place: Stock(1,'Склад 2', 'Южная. д 55', (5.0, 1.3)),
  //           time: DateTime.now().add(const Duration(days: 1, hours: 3)),
  //           user: User('Дуров Андрей Павлович', 2)
  //       )
  //   )
  // ];

  bool isPrevTimeEqualNow(StuffKeepingReport report) =>
      report.takeInfo.time.difference(DateTime.now()).inDays == 0;

  @override
  Widget build(BuildContext context, ref) {
    final reportsState = ref.watch(getStuffReportsProvider.call(stuffId));

    return Scaffold(
        appBar: buildAppBar(context: context, title: 'История взаимодействия'),
        body: Padding(
            padding: const EdgeInsets.all(14),
            child: switch (reportsState) {
              AsyncData(:final value) => value.isNotEmpty
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          isPrevTimeEqualNow(value[0])
                              ? 'Сегодня'
                              : value.first.takeInfo.time.format('hh:mm'),
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        const SizedBox(height: 14),
                        Expanded(
                          child: ListView.separated(
                              itemBuilder: (_, index) =>
                                  StuffUsingHistoryItem(report: value[index]),
                              separatorBuilder: (_, index) => _DateSeparator(
                                    curr: value[index + 1].takeInfo.time,
                                    prev: value[index].takeInfo.time,
                                  ),
                              itemCount: value.length),
                        ),
                      ],
                    )
                  : const Center(child: Text('Не зафиксировано взятий'),),
              _ => const Center(child: CircularProgressIndicator())
            }));
  }
}

class _DateSeparator extends StatelessWidget {
  const _DateSeparator({super.key, this.prev, required this.curr});

  final DateTime? prev;
  final DateTime curr;

  @override
  Widget build(BuildContext context) {
    if (prev == null || prev?.difference(curr).inDays == 0) {
      return const SizedBox(height: 14);
    }
    return Column(mainAxisSize: MainAxisSize.min, children: [
      const SizedBox(height: 14),
      Text(curr.format('DD.MM.YYYY'),
          style: Theme.of(context).textTheme.displayMedium),
      const SizedBox(height: 14)
    ]);
  }
}
