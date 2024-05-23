import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stocktacking/core/presentation/panel/panel.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stock/domain/entities/storage_base.dart';
import 'package:stocktacking/features/stuff/domain/entities/stuff.dart';

class StorageItemCard extends StatelessWidget {
  const StorageItemCard({super.key, required this.icon, required this.onTap, required this.fullName, required this.title});

  factory StorageItemCard.fromStorage({
    required StorageItem item,
    required void Function()? onTap
}) => StorageItemCard(
      icon: switch(item) {
        Storage() => Icons.storage,
        User() => Icons.person,
        _ => Icons.location_pin
      },
      onTap: onTap,
      fullName: switch(item) {
        Storage() => item.fullTitle,
        Stock(:final address) => address,
        _ => item.fullName
      },
      title: item.title
  );

  factory StorageItemCard.fromStuff({
    required Stuff stuff,
    required void Function()? onTap
  }) => StorageItemCard(
      icon: Icons.category,
      onTap: onTap,
      fullName: stuff.fullName,
      title: stuff.title
  );

  final IconData icon;
  final String title;
  final String fullName;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Panel(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title, style: Theme.of(context).textTheme.displayLarge),
              const SizedBox(height: 14),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    icon,
                    color: Theme.of(context).colorScheme.primary
                  ),
                  const SizedBox(width: 7),
                  Expanded(
                      child: FittedBox(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.scaleDown,
                          child: Text(
                              fullName,
                              textAlign: TextAlign.start,
                          )
                      )
                  )
                ],
              )
            ]
          )
      ),
    );
  }
}
