import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stocktacking/app/routing_provider.dart';

class StuffHistoryButton extends StatelessWidget {
  const StuffHistoryButton({super.key, required this.onTap});

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onTap,
        icon: Container(
          height: 44,
          width: 44,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12))
          ),
            child: const Center(child: Icon(Icons.history))
        )
    );
  }
}
