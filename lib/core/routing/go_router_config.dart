import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:textiffi/core/routing/top_level_routes.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

// GoRouter configuration
final GoRouter goRouter = GoRouter(
  initialLocation: AppRoutes.home.path,
  navigatorKey: _rootNavigatorKey,
  restorationScopeId: 'amos_music_random_id',
  routes: AppRoutes.values.map((e) => e.getRoute()).toList(growable: false),
  onException: (BuildContext ctx, GoRouterState state, GoRouter router) {
    router.go(AppRoutes.noRouteFound.path, extra: state.uri.toString());
  },
);
