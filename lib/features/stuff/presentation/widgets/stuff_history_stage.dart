import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stocktacking/core/presentation/panel/panel.dart';
import 'package:stocktacking/core/utils/extensions/date_formater.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff_keeping_info.dart';

class StuffHistoryStage extends StatelessWidget {
  const StuffHistoryStage._({super.key, required this.stuffKeepingInfo, required this.isPut});

  factory StuffHistoryStage.put({required StuffKeepingInfo putInfo}) => StuffHistoryStage._(stuffKeepingInfo: putInfo, isPut: true);
  factory StuffHistoryStage.take({required StuffKeepingInfo takeInfo}) => StuffHistoryStage._(stuffKeepingInfo: takeInfo, isPut: false);

  final StuffKeepingInfo stuffKeepingInfo;
  final bool isPut;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children:[
       if(stuffKeepingInfo.isBroken)  const DecoratedBox(
          decoration: BoxDecoration(
            color:  Color(0xFFFF4545),
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(50),
                bottom:  Radius.circular(50)
            ),
          ),
          child: SizedBox(width: 8, height: 24),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(isPut ? 'Конец' : 'Начало', style: Theme.of(context).textTheme.displayMedium),
              const SizedBox(height: 14),
              Text(isPut ? 'Положил: ' : 'Взял: ', style: Theme.of(context).textTheme.displayMedium?.copyWith(fontWeight: FontWeight.bold)),
              Text(stuffKeepingInfo.user.title),
              const SizedBox(height: 14),
              Text(isPut ? 'Конец использования: ' : 'Начало использования: ', style: Theme.of(context).textTheme.displayMedium?.copyWith(fontWeight: FontWeight.bold)),
              Text(stuffKeepingInfo.time.format('hh:mm')),
              const SizedBox(height: 14),
              Text('Состояние', style: Theme.of(context).textTheme.displayMedium?.copyWith(fontWeight: FontWeight.bold)),
              Flexible(
                child: Text(stuffKeepingInfo.isBroken
                    ? 'Присутствует неисправность (${stuffKeepingInfo.comment ?? 'Подробности отсутствуют'})'
                    : 'Работоспособно',
                  softWrap: true,
                  maxLines: 10,
                ),
              ),
            ],
          ),
        )
      ]
    );
  }
}
