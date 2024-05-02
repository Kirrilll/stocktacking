import 'package:flutter/material.dart';

class StuffDetailPage extends StatelessWidget {

  final int stuffId;

  const StuffDetailPage(this.stuffId, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('PREDMET - $stuffId'),
      ),
    );
  }
}
