import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stocktacking/core/presentation/panel/panel.dart';

class StuffCard extends StatelessWidget {
  const StuffCard({super.key, required this.title, required this.id, required this.onTap});

  final String title;
  final int id;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Panel(
            border: Border.all(color: const Color(0x1113181A), width: 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                      title,
                      style: Theme.of(context).textTheme.displayMedium,
                      overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 16),
                const Icon(Icons.arrow_forward_ios, color: Color(0xFFFF4545))
              ],
            ) ,
        ),
      ),
    );
  }
}
