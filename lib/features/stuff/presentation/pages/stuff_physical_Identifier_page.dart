import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:stocktacking/core/presentation/app_bar/build_app_bar.dart';
import 'package:stocktacking/core/presentation/panel/panel.dart';

class StuffPhysicalIdentifier extends StatelessWidget {
  const StuffPhysicalIdentifier({super.key, required this.stuffId});

  final int stuffId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          context: context,
          title: 'Идентификатор',
          actions: []
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Panel(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: QrImageView(
                    data: stuffId.toString(),
                    gapless: true,
                    size: 300.0,
                    semanticsLabel: 'Мышь #$stuffId',
                  ),
                ),
                const SizedBox(height: 14),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Color(0x333FE06C))
                          ),
                          child: const Icon(Icons.file_download, color: Color(0xFF3FE06C),)
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Color(0x333FE06C))
                          ),
                          child: const Icon(Icons.print, color: Color(0xFF3FE06C))
                      ),
                    )
                  ],
                )
              ]
            )
        ),
      ),
    );
  }
}
