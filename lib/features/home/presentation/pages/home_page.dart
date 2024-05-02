import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stocktacking/core/routing/constants/shell_route_config.dart';

import '../../../../core/routing/constants/routing_names.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.child});

  final Widget child;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int currTabIndex = _getInitialItemPath();

  void _onNavItemTap(int itemIndex) {
    if(_getInitialItemPath() != itemIndex) {
      final selectedRoute = ShellRouteConfig.values[itemIndex];
      context.goNamed(selectedRoute.routeName);
    }
  }

  int _getInitialItemPath() {
    final currLocation = GoRouterState.of(context).uri.toString();
    return ShellRouteConfig.values.firstWhere((route) => currLocation.contains(route.routeName)).index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onNavItemTap,
        currentIndex: _getInitialItemPath(),
        items: ShellRouteConfig.values
            .map((shellRoute) => BottomNavigationBarItem(
            icon: shellRoute.icon,
            // activeIcon: shellRoute.icon,
            label: shellRoute.label
        ))
            .toList(),
        // type: BottomNavigationBarType.s,
      ),
    );
  }
}
