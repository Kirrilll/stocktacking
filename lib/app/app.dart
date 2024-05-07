import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stocktacking/app/routing_provider.dart';
import 'package:stocktacking/core/routing/services/go_router_location_service.dart';
import 'package:stocktacking/core/theming/light_theme.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return MaterialApp.router(
      theme: lightTheme,
      routerConfig: ref.read(locationServiceProvider).routerConfig,
    );
  }
}