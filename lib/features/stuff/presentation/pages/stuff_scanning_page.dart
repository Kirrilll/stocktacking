import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:stocktacking/app/routing_provider.dart';
import 'package:stocktacking/core/presentation/app_bar/build_app_bar.dart';
import 'package:stocktacking/core/qr_scanner/presentation/qr_scan_view_builder.dart';
import 'package:stocktacking/core/routing/constants/routing_names.dart';
import 'package:stocktacking/core/routing/constants/routing_params.dart';

class StuffScanningPage extends ConsumerStatefulWidget {
  const StuffScanningPage({super.key});

  @override
  ConsumerState<StuffScanningPage> createState() => _StuffScanningPageState();
}

class _StuffScanningPageState extends ConsumerState<StuffScanningPage> {

  QRViewController? _qrViewController;
  _onCreatedQrView(QRViewController controller) => setState(() => _qrViewController = controller);

  _onScan(Barcode code) {
    _qrViewController?.pauseCamera();
    debugPrint('DATA - ${code.code}');
    final data = code.code;
    if(data != null && num.tryParse(data) != null) {
      ref
          .read(locationServiceProvider)
          .goNamed(name: stuffDetail, params: {stuffIdParam: data});
    }
  }

  @override
  void dispose() {
    _qrViewController?.dispose();
    super.dispose();
  }

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
                onResult: _onScan,
                onCreateQrView: _onCreatedQrView,
                controller: _qrViewController,
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
