import 'package:flutter/material.dart';
import 'package:stocktacking/core/debounce/domain/debounce.dart';

class DebounceBuilder extends StatefulWidget {
  const DebounceBuilder({
    super.key,
    required this.duration,
    required this.builder
  });
  final Duration duration;
  final Widget Function(BuildContext context, void Function(void Function() callback) debounce) builder;


  @override
  State<DebounceBuilder> createState() => _DebounceBuilderState();
}

class _DebounceBuilderState extends State<DebounceBuilder> {

  late final Debounce _debounce = Debounce(widget.duration);

  @override
  void dispose() {
    _debounce.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _debounce.call);
  }
}
