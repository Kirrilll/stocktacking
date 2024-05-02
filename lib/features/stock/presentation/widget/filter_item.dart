import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FilterItem extends StatelessWidget {
  const FilterItem({super.key, required this.title, required this.checked});

  final String title;
  final bool checked;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: FittedBox(
            child: Text(title, style: Theme.of(context).textTheme.displaySmall),
          ),
        ),
        const SizedBox(width: 10),
        Checkbox(value: checked, onChanged: (_) {})
      ],
    );
  }
}
