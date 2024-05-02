import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stocktacking/core/presentation/app_bar/build_app_bar.dart';
import 'package:stocktacking/features/stock/presentation/widget/filter_item.dart';
import 'package:stocktacking/features/stock/presentation/widget/filter_panel.dart';

class StockFilter extends StatelessWidget {
  const StockFilter({super.key});

  static final items = [1, 2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'Фильтры'),
      body:  Padding(
        padding: const EdgeInsets.all(14),
        child: ListView.separated(
            itemBuilder: (_, index) => items.length == index
                ? RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: 'Сбросить все фильтры',
                        style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          decoration: TextDecoration.underline,
                          color: const Color(0x40111318)
                        ),
                        recognizer:TapGestureRecognizer()..onTap = () {}
                    )
                )
                : FilterPanel(title: 'FILTER PANEL $index'),
            separatorBuilder: (_, __) => const SizedBox(height: 14),
            itemCount: items.length + 1
        )
      ),
    );
  }
}
