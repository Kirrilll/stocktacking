import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:go_router/src/state.dart';
import 'package:stocktacking/core/routing/constants/routing_names.dart';
import 'package:stocktacking/core/routing/utils/route_guard_base.dart';

class CredentialRouteGuard implements RouteGuardBase {

  final ValueListenable<bool> isAuthListenable;

  const CredentialRouteGuard(this.isAuthListenable);

  @override
  Listenable get listenable => isAuthListenable;

  @override
  Future<String?> redirect(GoRouterState state) async {
    final isAuth = isAuthListenable.value;
    final currLocationPath = state.uri.toString();
    final authLocationPath = state.namedLocation(login);
    if(isAuth && currLocationPath.contains(authLocationPath)) {
      return state.namedLocation(userStuff);
    }
    else if(!isAuth && !currLocationPath.contains(authLocationPath)) {
      return authLocationPath;
    }
    return null;
  }

}