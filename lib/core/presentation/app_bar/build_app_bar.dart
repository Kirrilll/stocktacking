import 'package:flutter/material.dart';

AppBar buildAppBar({
  required BuildContext context,
  required String title,
  List<Widget> actions = const []
}) => AppBar(
  title: Text(title),
  scrolledUnderElevation: 0,
  elevation: 0,
  titleTextStyle: Theme.of(context).textTheme.displayLarge,
  backgroundColor: Theme.of(context).colorScheme.background,
  actions: actions,
);