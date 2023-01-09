import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_routing_flow/common/breakpoint_extension.dart';
import 'package:test_routing_flow/component/authentication/bloc/authentication_bloc.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_settings/bloc/theme_bloc.dart';
import 'package:test_routing_flow/router/app_locator.dart';

class DashboardSettingsScreen extends StatefulWidget {
  static const routerName = 'DashboardSettingsRouter';
  static const routerPath = 'settings';
  const DashboardSettingsScreen({super.key});

  @override
  State<DashboardSettingsScreen> createState() => _DashboardSettingsScreenState();
}

class _DashboardSettingsScreenState extends State<DashboardSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: locator.get<ThemeBloc>()),
        BlocProvider.value(value: locator.get<AuthenticationBloc>()),
      ],
      child: Scaffold(
        backgroundColor: context.theme.scaffoldBackgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Dashboard Settings Page!'),
              BlocBuilder<ThemeBloc, ThemeState>(
                builder: (context, state) {
                  final isLight = state.themeName == AppTheme.Light.name;
                  final themeBloc = BlocProvider.of<ThemeBloc>(context);
                  return MaterialButton(
                    onPressed: () {
                      themeBloc.add(const ThemeEvent.switchTheme());
                    },
                    color: isLight ? Colors.amber : Colors.deepOrange,
                    child: Text('Change theme to ${isLight ? 'Light' : 'Dark'}'),
                  );
                },
              ),
              BlocBuilder<AuthenticationBloc, AuthenticationState>(
                builder: (context, state) {
                  final isLoggedIn = state.isLoggedIn;
                  final themeBloc = BlocProvider.of<AuthenticationBloc>(context);
                  return MaterialButton(
                    onPressed: () {
                      themeBloc.add(AuthenticationEvent.logout());
                    },
                    child: Text('Sign out!'),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
