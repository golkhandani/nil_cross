import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_forks/dashboard_forks_screen.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/dashboard_learning_path_list/dashboard_learning_path_list_screen.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/dashboard_learning_path_single/dashboard_learning_path_single_screen.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_screen.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_profile/dashboard_profile_screen.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_settings/dashboard_settings_screen.dart';
import 'package:test_routing_flow/component/home/home_screen.dart';
import 'package:test_routing_flow/component/login/login_screen.dart';
import 'package:test_routing_flow/router/authentication_gaurd.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: [
    RedirectRoute(path: '/', redirectTo: HomeScreen.routerPath),
    AutoRoute(
      initial: true,
      name: HomeScreen.routerName,
      path: HomeScreen.routerPath,
      page: HomeScreen,
    ),
    AutoRoute(
      name: LoginScreen.routerName,
      path: LoginScreen.routerPath,
      page: LoginScreen,
      guards: [AuthenticatedGuard],
    ),
    AutoRoute(
      path: DashboardScreen.routerPath,
      name: DashboardScreen.routerName,
      page: DashboardScreen,
      guards: [AuthenticationGuard],
      children: [
        RedirectRoute(path: '', redirectTo: DashboardLearningPathListScreen.routerPath),
        AutoRoute(
          path: DashboardLearningPathListScreen.routerPath,
          name: DashboardLearningPathListScreen.routerName,
          page: EmptyRouterPage,
          guards: [AuthenticationGuard],
          children: [
            AutoRoute(
              path: '',
              page: DashboardLearningPathListScreen,
              guards: [],
            ),
            AutoRoute(
              name: DashboardLearningPathSingleScreen.routerName,
              path: DashboardLearningPathSingleScreen.routerPath,
              page: DashboardLearningPathSingleScreen,
              guards: [],
            )
          ],
        ),
        AutoRoute(
          name: DashboardProfileScreen.routerName,
          path: DashboardProfileScreen.routerPath,
          page: DashboardProfileScreen,
          guards: [AuthenticationGuard],
        ),
        AutoRoute(
          name: DashboardForksScreen.routerName,
          path: DashboardForksScreen.routerPath,
          page: DashboardForksScreen,
          guards: [AuthenticationGuard],
        ),
        AutoRoute(
          name: DashboardSettingsScreen.routerName,
          path: DashboardSettingsScreen.routerPath,
          page: DashboardSettingsScreen,
          guards: [AuthenticationGuard],
        ),
      ],
    ),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {
  AppRouter({required super.authenticationGuard, required super.authenticatedGuard});
}
