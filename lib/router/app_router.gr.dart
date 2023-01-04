// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter({
    GlobalKey<NavigatorState>? navigatorKey,
    required this.authenticationGuard,
  }) : super(navigatorKey);

  final AuthenticationGuard authenticationGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    LoginRouter.name: (routeData) {
      final args = routeData.argsAs<LoginRouterArgs>(
          orElse: () => const LoginRouterArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: LoginScreen(
          key: args.key,
          successRoute: args.successRoute,
        ),
      );
    },
    DashboardRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const DashboardScreen(),
      );
    },
    DashboardRouterProtected.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const DashboardScreen(),
      );
    },
    DashboardLearningPathListRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    DashboardProfileRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const DashboarProfileScreen(),
      );
    },
    DashboardLearningPathListScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const DashboardLearningPathListScreen(),
      );
    },
    DashboardLearningPathSingleRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DashboardLearningPathSingleRouterArgs>(
          orElse: () => DashboardLearningPathSingleRouterArgs(
              id: pathParams.getString('id')));
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: DashboardLearningPathSingleScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/home',
          fullMatch: true,
        ),
        RouteConfig(
          HomeRouter.name,
          path: '/home',
        ),
        RouteConfig(
          LoginRouter.name,
          path: '/login',
        ),
        RouteConfig(
          DashboardRouter.name,
          path: '/dashboard',
          children: [
            RouteConfig(
              '#redirect',
              path: '',
              parent: DashboardRouter.name,
              redirectTo: 'learning-paths',
              fullMatch: true,
            ),
            RouteConfig(
              DashboardLearningPathListRouter.name,
              path: 'learning-paths',
              parent: DashboardRouter.name,
              guards: [authenticationGuard],
              children: [
                RouteConfig(
                  DashboardLearningPathListScreenRoute.name,
                  path: '',
                  parent: DashboardLearningPathListRouter.name,
                ),
                RouteConfig(
                  DashboardLearningPathSingleRouter.name,
                  path: ':id',
                  parent: DashboardLearningPathListRouter.name,
                ),
              ],
            ),
            RouteConfig(
              DashboardProfileRouter.name,
              path: 'profile',
              parent: DashboardRouter.name,
              guards: [authenticationGuard],
            ),
          ],
        ),
        RouteConfig(
          DashboardRouterProtected.name,
          path: '/dashboard/protected',
          guards: [authenticationGuard],
        ),
      ];
}

/// generated route for
/// [HomeScreen]
class HomeRouter extends PageRouteInfo<void> {
  const HomeRouter()
      : super(
          HomeRouter.name,
          path: '/home',
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [LoginScreen]
class LoginRouter extends PageRouteInfo<LoginRouterArgs> {
  LoginRouter({
    Key? key,
    PageRouteInfo<dynamic>? successRoute,
  }) : super(
          LoginRouter.name,
          path: '/login',
          args: LoginRouterArgs(
            key: key,
            successRoute: successRoute,
          ),
        );

  static const String name = 'LoginRouter';
}

class LoginRouterArgs {
  const LoginRouterArgs({
    this.key,
    this.successRoute,
  });

  final Key? key;

  final PageRouteInfo<dynamic>? successRoute;

  @override
  String toString() {
    return 'LoginRouterArgs{key: $key, successRoute: $successRoute}';
  }
}

/// generated route for
/// [DashboardScreen]
class DashboardRouter extends PageRouteInfo<void> {
  const DashboardRouter({List<PageRouteInfo>? children})
      : super(
          DashboardRouter.name,
          path: '/dashboard',
          initialChildren: children,
        );

  static const String name = 'DashboardRouter';
}

/// generated route for
/// [DashboardScreen]
class DashboardRouterProtected extends PageRouteInfo<void> {
  const DashboardRouterProtected()
      : super(
          DashboardRouterProtected.name,
          path: '/dashboard/protected',
        );

  static const String name = 'DashboardRouterProtected';
}

/// generated route for
/// [EmptyRouterPage]
class DashboardLearningPathListRouter extends PageRouteInfo<void> {
  const DashboardLearningPathListRouter({List<PageRouteInfo>? children})
      : super(
          DashboardLearningPathListRouter.name,
          path: 'learning-paths',
          initialChildren: children,
        );

  static const String name = 'DashboardLearningPathListRouter';
}

/// generated route for
/// [DashboarProfileScreen]
class DashboardProfileRouter extends PageRouteInfo<void> {
  const DashboardProfileRouter()
      : super(
          DashboardProfileRouter.name,
          path: 'profile',
        );

  static const String name = 'DashboardProfileRouter';
}

/// generated route for
/// [DashboardLearningPathListScreen]
class DashboardLearningPathListScreenRoute extends PageRouteInfo<void> {
  const DashboardLearningPathListScreenRoute()
      : super(
          DashboardLearningPathListScreenRoute.name,
          path: '',
        );

  static const String name = 'DashboardLearningPathListScreenRoute';
}

/// generated route for
/// [DashboardLearningPathSingleScreen]
class DashboardLearningPathSingleRouter
    extends PageRouteInfo<DashboardLearningPathSingleRouterArgs> {
  DashboardLearningPathSingleRouter({
    Key? key,
    required String id,
  }) : super(
          DashboardLearningPathSingleRouter.name,
          path: ':id',
          args: DashboardLearningPathSingleRouterArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'DashboardLearningPathSingleRouter';
}

class DashboardLearningPathSingleRouterArgs {
  const DashboardLearningPathSingleRouterArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'DashboardLearningPathSingleRouterArgs{key: $key, id: $id}';
  }
}
