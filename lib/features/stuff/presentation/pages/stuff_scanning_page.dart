import 'package:flutter/material.dart';
import 'package:stocktacking/core/presentation/app_bar/build_app_bar.dart';
import 'package:stocktacking/core/qr_scanner/presentation/qr_scan_view_builder.dart';

class StuffScanningPage extends StatelessWidget {
  const StuffScanningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        appBar: buildAppBar(context: context, title: 'Сканирование'),
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16))
            ),
            child: QrScannerBuilder(
                onResult: (_) {},
                // onCreateQrView: _onCreatedQrView,
                // controller: _qrViewController,
                qrBuilder: (_, scanner, values, actions) => Stack(
                  children: [
                    scanner
                  ],
                )
            ),
          ),
        )
    );
  }
}
