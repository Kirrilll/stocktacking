import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stocktacking/core/presentation/panel/panel.dart';
import 'package:stocktacking/features/stock/presentation/widget/filter_item.dart';

class FilterPanel extends StatelessWidget {
  const FilterPanel({super.key, required this.title});

  final String title;
  // final

  static final items = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Panel(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: Theme.of(context).textTheme.displayMedium?.copyWith(fontWeight: FontWeight.w800)),
                Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(50),
                  child: InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {},
                      child: const Icon(Icons.refresh)
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            ...[for(var i = 0; i != items.length * 2 -1; i++) i.isEven
                ? FilterItem(title: 'ndjdjdj ${i ~/2}', checked: false)
                : const Divider()
            ]
          ],
        )
    );
  }
}
