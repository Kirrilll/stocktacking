import 'package:flutter/material.dart';
import './routing_names.dart';

enum ShellRouteConfig {
  userStuff,
  stocks
}

extension RouteInformation on ShellRouteConfig {
  Widget get icon => switch(this) {
    ShellRouteConfig.userStuff => const Icon(Icons.home),
    ShellRouteConfig.stocks => const Icon(Icons.table_rows_rounded)
  };

  String get label => switch(this) {
    ShellRouteConfig.userStuff => 'Главная',
    ShellRouteConfig.stocks => 'Имущество'
  };

  String get routeName => switch(this) {
    ShellRouteConfig.userStuff => userStuff,
    ShellRouteConfig.stocks => stocks
  };
}