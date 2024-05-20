import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stocktacking/core/presentation/panel/panel.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';

class StockCard extends StatelessWidget {
  const StockCard({super.key, required this.stock, required this.onTap});

  final Stock stock;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Panel(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(stock.title, style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(height: 14),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.location_pin, color: Theme.of(context).colorScheme.primary,),
                const SizedBox(width: 7),
                Expanded(child: FittedBox(child: Text(stock.address)))
              ],
            )
          ]
        )
    );
  }
}
