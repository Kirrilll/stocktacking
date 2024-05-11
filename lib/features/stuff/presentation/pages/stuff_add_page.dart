import 'package:flutter/material.dart';
import 'package:stocktacking/core/presentation/app_bar/build_app_bar.dart';

class StuffAddPage extends StatelessWidget {
  const StuffAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'Создание предмета'),
      body: const Padding(
        padding: EdgeInsets.all(14),
        child: Center(
          child: Text('В разработке'),
        ),
      ),
    );
  }
}
