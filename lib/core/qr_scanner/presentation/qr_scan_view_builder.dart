import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrValues {
  final bool isFlashEnabled;
  final bool isPaused;

  const QrValues({
    required this.isFlashEnabled,
    required this.isPaused,
  });
}

class QrActions {
  final void Function()? toggleFlash;
  final void Function()? togglePause;

  const QrActions({
    required this.toggleFlash,
    required this.togglePause,
  });

}

class QrScannerBuilder extends StatefulWidget {
  const QrScannerBuilder({
    super.key,
    required this.onResult,
    required this.qrBuilder,
    this.controller,
    this.onCreateQrView
  });

  final QRViewController? controller;
  final void Function(QRViewController createdController)? onCreateQrView;
  final Widget Function(BuildContext context, Widget qrScanner, QrValues values, QrActions actions) qrBuilder;
  final void Function(Barcode res) onResult;

  @override
  State<QrScannerBuilder> createState() => _QrScannerBuilderState();
}

class _QrScannerBuilderState extends State<QrScannerBuilder> {

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? _controller;

  bool _isFlashEnabled = false;
  bool _isPaused = false;
  bool get isInited => _controller != null;

  QRViewController? get controller => widget.controller ?? _controller;

  @override
  void didUpdateWidget(covariant QrScannerBuilder oldWidget) {
    if(widget.controller != null) {
      controller?.scannedDataStream.listen((scanData) {
        widget.onResult(scanData);
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  void _onQRViewCreated(QRViewController controller) {
    if(widget.onCreateQrView != null) {
      widget.onCreateQrView!(controller);
      debugPrint('outer controller');
    }
    else {
      setState(() {
        _controller = controller;
      });
      this.controller?.scannedDataStream.listen((scanData) {
        widget.onResult(scanData);
      });
    }
  }

  void _onToggleFlash() {
    setState(() {
      _isFlashEnabled = !_isFlashEnabled;
    });
    controller?.toggleFlash();
  }

  void _onToggleResume() {
    bool updatedIsPaused;
    if(_isPaused) {
      controller?.resumeCamera();
      updatedIsPaused = false;
    }
    else {
      controller?.pauseCamera();
      updatedIsPaused = true;
    }
    setState(() {
      _isPaused = updatedIsPaused;
    });

  }
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller?.pauseCamera();
    }
    controller?.resumeCamera();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return widget.qrBuilder(
      context,
      QRView(
        key: qrKey,
        onQRViewCreated: _onQRViewCreated,
        overlay: QrScannerOverlayShape(
            borderColor: Theme.of(context).colorScheme.primary,
            borderRadius: 10,
            borderLength: 30,
            borderWidth: 10,
            cutOutSize: 300
        ),
      ),
      QrValues(isFlashEnabled: _isFlashEnabled, isPaused: _isPaused),
      QrActions(
          toggleFlash: isInited ? _onToggleFlash : null,
          togglePause: isInited ? _onToggleResume : null
      )
    );
  }
}
