import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_routing_flow/component/authentication/bloc/authentication_bloc.dart';
import 'package:test_routing_flow/component/dashboard_learning_path_list/bloc/learning_path_list_bloc.dart';
import 'package:test_routing_flow/component/login/bloc/login_bloc.dart';
import 'package:test_routing_flow/router/app_navigator.dart';
import 'package:test_routing_flow/router/app_shared_store.dart';

final locator = GetIt.instance;

Future setupStore() async {
  final Future<SharedPreferences> prefs = SharedPreferences.getInstance();
  final SharedPreferences preferences = await prefs;
  locator.registerSingleton<AppSharedStore>(AppSharedStore(preferences));
}

setupBloc() {
  locator.registerSingleton(AuthenticationBloc());
  locator.registerSingleton(LoginBloc());
  locator.registerSingleton(LearningPathListBloc());
}

setupNavigator({required navigatorKey}) {
  locator.registerSingleton(AppNavigator(navigatorKey));
}
