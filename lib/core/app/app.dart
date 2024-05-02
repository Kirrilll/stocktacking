import 'package:flutter/material.dart';
import 'package:stocktacking/core/routing/router.dart';
import 'package:stocktacking/core/routing/services/go_router_location_service.dart';
import 'package:stocktacking/core/theming/light_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  static final GoRouterLocationService _locationService = GoRouterLocationService(guards: []);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: lightTheme,
      routerConfig: _locationService.routerConfig,
    );
  }
}