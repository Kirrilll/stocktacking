import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

part '../presentation/toast.dart';

class ToastNotifier {

  const ToastNotifier();

  void showToast(BuildContext context, {required String message, bool isError = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      _buildToast(message: message, isError: isError, context: context)
    );
  }
}