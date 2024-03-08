import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:textiffi/core/presentation/screens/route_not_found.dart';
import 'package:textiffi/features/ocr/presentation/screens/home_screen.dart';

enum AppRoutes {
  home('home'),
  noRouteFound('404');

  const AppRoutes(this.routeName);
  final String routeName;

  /// [home] is the initial path '/'
  String get path => this == home ? '/' : '/$routeName';

  RouteBase getRoute() {
    switch (this) {
      case AppRoutes.home:
        return GoRoute(
          path: AppRoutes.home.path,
          name: AppRoutes.home.routeName,
          builder: (BuildContext _, GoRouterState __) => const HomeScreen(),
        );
      case AppRoutes.noRouteFound:
        return GoRoute(
          path: AppRoutes.noRouteFound.path,
          name: AppRoutes.noRouteFound.routeName,
          builder: (BuildContext _, GoRouterState __) => const RouteNotFound(),
        );
    }
  }
}
