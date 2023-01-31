import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_routing_flow/common/breakpoint_extension.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:test_routing_flow/component/authentication/bloc/authentication_bloc.dart';
import 'package:test_routing_flow/component/authentication/service/authentication_service.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/dashboard_learning_path_list/dashboard_learning_path_list_screen.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/dashboard_learning_path_single/dashboard_learning_path_single_screen.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_profile/dashboard_profile_screen.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_screen.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_settings/bloc/theme_bloc.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_settings/dashboard_settings_screen.dart';
import 'package:test_routing_flow/component/home/home_screen.dart';
import 'package:test_routing_flow/component/login/login_screen.dart';
import 'package:test_routing_flow/router/app_locator.dart';
// import 'package:test_routing_flow/router/app_router.dart';
// import 'package:test_routing_flow/router/authentication_gaurd.dart';
// import 'package:test_routing_flow/shared/konstants.dart';
import 'package:vrouter/vrouter.dart';

import 'component/dashboard/dashboard_forks/dashboard_forks_screen.dart';

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

const Map<String, int> bottonAppBarMap = {
  DashboardLearningPathListScreen.routerPath: 0,
  DashboardForksScreen.routerPath: 1,
  DashboardProfileScreen.routerPath: 2,
};

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  await setupStore();
  setupService();
  setupNavigator(navigatorKey: navigatorKey);
  setupBloc();

  final AuthenticationService authenticationService = locator.get();
  await authenticationService.refreshIsAuthenticated();

  final app = AppRouting(navigatorKey: navigatorKey);
  runApp(app);
}

class AppRouting extends StatefulWidget {
  const AppRouting({
    Key? key,
    required this.navigatorKey,
  }) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey;

  @override
  State<AppRouting> createState() => _AppRoutingState();
}

class _AppRoutingState extends State<AppRouting> {
  late ThemeBloc _themeBloc;
  @override
  void initState() {
    _themeBloc = locator.get();
    _themeBloc.add(const ThemeEvent.loadTheme());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      bloc: _themeBloc,
      builder: (context, state) {
        return VRouter(
          theme: state.themeData,
          debugShowCheckedModeBanner: false,
          navigatorKey: widget.navigatorKey,
          routes: [
            VWidget(path: '/', widget: const HomeScreen()),
            VWidget(
              path: LoginScreen.routerPath,
              name: LoginScreen.routerName,
              widget: const LoginScreen(),
            ),
            VNester(
              path: DashboardScreen.routerPath,
              name: DashboardScreen.routerName,
              widgetBuilder: (child) => DashboardScreen(
                child: child,
              ), // Child is the widget from nestedRoutes
              nestedRoutes: [
                VWidget(
                  path: DashboardLearningPathListScreen.routerPath,
                  name: DashboardLearningPathListScreen.routerName,
                  widget: const DashboardLearningPathListScreen(),
                  stackedRoutes: [
                    VWidget(
                      path: DashboardLearningPathSingleScreen.routerPath,
                      name: DashboardLearningPathSingleScreen.routerName,
                      widget: const DashboardLearningPathSingleScreen(),
                    )
                  ],
                ),
                VWidget(
                  path: DashboardForksScreen.routerPath,
                  name: DashboardForksScreen.routerName,
                  widget: const DashboardForksScreen(),
                ),
                VWidget(
                  path: DashboardSettingsScreen.routerPath,
                  name: DashboardSettingsScreen.routerName,
                  widget: const DashboardSettingsScreen(),
                ),
                VRouteRedirector(
                  path: '*',
                  redirectTo: DashboardLearningPathListScreen.routerPath,
                ),
              ],
            ),
            VWidget(
              path: '*',
              widget: const UnknownPathWidget(),
            )
          ],
        );
      },
    );
  }
}

class UnknownPathWidget extends StatelessWidget {
  const UnknownPathWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("UnknownPathWidget"),
    );
  }
}
