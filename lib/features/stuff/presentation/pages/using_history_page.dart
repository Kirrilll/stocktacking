import 'package:flutter/material.dart';
import 'package:stocktacking/core/presentation/app_bar/build_app_bar.dart';

class UsingHistoryPage extends StatelessWidget {
  const UsingHistoryPage({super.key, required this.stuffId});

  final int stuffId;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar(context: context, title: 'История взаимодействия'),
      body:const Center(
        child: Text('В разработке'),
      ),
    );
  }
}
