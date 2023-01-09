import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_routing_flow/component/authentication/bloc/authentication_bloc.dart';
import 'package:test_routing_flow/component/authentication/service/authentication_service.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/bloc/learning_path_list_bloc.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_settings/bloc/theme_bloc.dart';
import 'package:test_routing_flow/component/home/bloc/home_bloc.dart';
import 'package:test_routing_flow/component/login/bloc/login_bloc.dart';
import 'package:test_routing_flow/router/app_navigator.dart';
import 'package:test_routing_flow/router/app_shared_store.dart';

final locator = GetIt.instance;

Future setupStore() async {
  final Future<SharedPreferences> prefs = SharedPreferences.getInstance();
  final SharedPreferences preferences = await prefs;
  locator.registerSingleton<AppSharedStore>(AppSharedStore(preferences));
}

setupService() async {
  locator.registerSingleton(AuthenticationService());
}

setupBloc() async {
  locator.registerSingleton(AuthenticationBloc());
  locator.registerSingleton(ThemeBloc());

  locator.registerSingleton(HomeBloc());

  locator.registerSingleton(LoginBloc());
  locator.registerSingleton(LearningPathListBloc());
}

setupNavigator({required navigatorKey}) {
  locator.registerSingleton(AppNavigator(navigatorKey));
}
