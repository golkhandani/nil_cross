import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:test_routing_flow/component/authentication/bloc/authentication_bloc.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/dashboard_learning_path_list/dashboard_learning_path_list_screen.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/app_router.dart';
import 'package:test_routing_flow/router/app_shared_store.dart';

mixin AuthenticationGuardMixin {
  AuthenticationBloc get _authenticationBloc => locator.get();

  get isAuthenticated => _authenticationBloc.state.isLoggedIn;
}

class AuthenticationGuard extends AutoRouteGuard {
  AppSharedStore get _appSharedStore => locator.get();
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final isAuthenticated =
        await _appSharedStore.get<bool?>(AuthenticationBloc.isAuthenticatedKey) ?? false;
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation

    if (isAuthenticated) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      // we redirect the user to our login page
      router.push(LoginRouter());
    }
  }
}

// to pervent user from accessing the login or signup page while they are already logged in.
class AuthenticatedGuard extends AutoRouteGuard {
  AppSharedStore get _appSharedStore => locator.get();
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final isAuthenticated =
        await _appSharedStore.get<bool?>(AuthenticationBloc.isAuthenticatedKey) ?? false;
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation

    if (!isAuthenticated) {
      // if user is not authenticated we continue
      resolver.next(true);
    } else {
      // we redirect the user to our dashboard page
      router.push(DashboardRouter());
    }
  }
}
