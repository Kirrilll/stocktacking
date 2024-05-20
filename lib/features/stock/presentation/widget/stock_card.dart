import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stocktacking/core/presentation/panel/panel.dart';
import 'package:stocktacking/features/stock/domain/entities/storage.dart';
import 'package:stocktacking/features/stock/domain/entities/storage_base.dart';

class StorageItemCard extends StatelessWidget {
  const StorageItemCard({super.key, required this.storage, required this.onTap});

  final StorageItem storage;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Panel(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(storage.title, style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(height: 14),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  switch(storage) {
                    Storage() => Icons.storage,
                    User() => Icons.person,
                    _ => Icons.location_pin
                  },
                  color: Theme.of(context).colorScheme.primary
                ),
                const SizedBox(width: 7),
                Expanded(
                    child: FittedBox(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.scaleDown,
                        child: Text(
                            switch(storage) {
                              Stock(:final address) => address,
                              Storage(:final fullTitle) => fullTitle,
                              _ => ''
                            },
                            textAlign: TextAlign.start,
                        )
                    )
                )
              ],
            )
          ]
        )
    );
  }
}
