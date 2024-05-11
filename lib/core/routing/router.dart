import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stocktacking/core/routing/constants/routing_names.dart';
import 'package:stocktacking/core/routing/constants/routing_params.dart';
import 'package:stocktacking/core/routing/utils/route_guard_base.dart';
import 'package:stocktacking/features/credential/presentation/pages/login_page.dart';
import 'package:stocktacking/features/home/presentation/pages/home_page.dart';
import 'package:stocktacking/features/stock/presentation/pages/stock_filter_page.dart';
import 'package:stocktacking/features/stock/presentation/pages/stocks_page.dart';
import 'package:stocktacking/features/stuff/presentation/pages/stuff_detail_page.dart';
import 'package:stocktacking/features/stuff/presentation/pages/stuff_report_page.dart';
import 'package:stocktacking/features/stuff/presentation/pages/stuff_scanning_page.dart';
import 'package:stocktacking/features/stuff/presentation/pages/user_stuff_page.dart';
import 'package:stocktacking/features/stuff/presentation/pages/using_history_page.dart';

part './constants/routing_paths.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

Page buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    transitionDuration: const Duration(milliseconds: 100),
    reverseTransitionDuration: const Duration(milliseconds: 100),
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}


GoRouter configureRouter(List<RouteGuardBase> guards) => GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: _loginPath,
      refreshListenable: Listenable.merge(guards
          .map((guard) => guard.listenable)
          .toList()
      ),
      redirect: (_, state) async {
        for(final guard in guards) {
          final redirectRes = await guard.redirect(state);
          if(redirectRes != null) return redirectRes;
        }
        return null;
      },
      routes: [
        GoRoute(
          path: _loginPath,
          name: login,
          pageBuilder: (context, state) => buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: const LoginPage()
          )
        ),
        ShellRoute(
            navigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state, child) =>
                buildPageWithDefaultTransition(
                    context: context,
                    state: state,
                    child: HomePage(child: child)),
            routes: [
              GoRoute(
                  path: _userStuffPath,
                  name: userStuff,
                  pageBuilder: (context, state) =>
                      buildPageWithDefaultTransition(
                          context: context,
                          state: state,
                          child: const UserStuffPage()),
                  routes: [
                    GoRoute(
                        path: _stuffTackingPath,
                        parentNavigatorKey: _rootNavigatorKey,
                        name: stuffTacking,
                        pageBuilder: (context, state) =>
                            buildPageWithDefaultTransition(
                                context: context,
                                state: state,
                                child: const StuffScanningPage())
                    ),
                    GoRoute(
                      path: _stuffDetailPath,
                      parentNavigatorKey: _rootNavigatorKey,
                      name: stuffDetail,
                      pageBuilder: (context, state) => buildPageWithDefaultTransition(
                          context: context,
                          state: state,
                          child: StuffDetailPage(int.tryParse(state.pathParameters[stuffIdParam] ?? '') ?? -1)
                      )
                    ),
                    GoRoute(
                        path: _stuffHistoryPath,
                        parentNavigatorKey: _rootNavigatorKey,
                      name: stuffHistory,
                      pageBuilder: (context, state) => buildPageWithDefaultTransition(
                          context: context,
                          state: state,
                          child: UsingHistoryPage(stuffId: int.tryParse(state.pathParameters[stuffIdParam] ?? '') ?? -1)
                      )
                    ),
                    GoRoute(
                        path: _stuffCreateReport,
                      name: stuffReport,
                      parentNavigatorKey: _rootNavigatorKey,
                      pageBuilder: (context, state) => buildPageWithDefaultTransition(
                          context: context,
                          state: state,
                          child: StuffReportPage(
                              isPut: bool.tryParse(state.pathParameters[stuffReportIsPutParam] ?? '') ?? false,
                              stuffId: int.tryParse(state.pathParameters[stuffIdParam] ?? '') ?? -1
                          )
                      )
                    )
                  ]),
              GoRoute(
                  path: _stocksPath,
                  name: stocks,
                  pageBuilder: (context, state) =>
                      buildPageWithDefaultTransition(
                          context: context,
                          state: state,
                          child: const StocksPage()
                      ),
                routes: [
                  GoRoute(
                      path: _stockFilter,
                      name: stockFilter,
                    pageBuilder: (context, state) => buildPageWithDefaultTransition(
                        context: context,
                        state: state,
                        child: const StockFilter()
                    )
                  )
                ]
              )
            ]),
      ]);

