import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_routing_flow/component/authentication/bloc/authentication_bloc.dart';
import 'package:test_routing_flow/component/authentication/service/authentication_service.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_settings/bloc/theme_bloc.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/app_router.dart';
import 'package:test_routing_flow/router/authentication_gaurd.dart';
import 'package:test_routing_flow/shared/konstants.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
        PointerDeviceKind.unknown,
      };
}

void main() async {
  await setupStore();
  setupService();

  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late AppRouter _appRouter;
  late ThemeBloc _themeBloc;
  late AuthenticationService _authenticationService;

  @override
  void initState() {
    _appRouter = AppRouter(
      authenticationGuard: AuthenticationGuard(),
      authenticatedGuard: AuthenticatedGuard(),
    );

    setupNavigator(navigatorKey: _appRouter.navigatorKey);
    setupBloc();
    _authenticationService = locator.get();

    _themeBloc = locator.get();
    _themeBloc.add(const ThemeEvent.loadTheme());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _authenticationService.refreshIsAuthenticated(),
        builder: (context, _) {
          return BlocBuilder<ThemeBloc, ThemeState>(
            bloc: _themeBloc,
            builder: (context, state) {
              if (state.isLoading) {
                return kLoadingBox;
              }
              return MaterialApp.router(
                scrollBehavior: MyCustomScrollBehavior(),
                routerDelegate: _appRouter.delegate(),
                routeInformationParser: _appRouter.defaultRouteParser(),
                title: 'Flutter Demo',
                theme: state.themeData,
              );
            },
          );
        });
  }
}
