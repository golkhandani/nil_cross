import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_routing_flow/component/authentication/service/authentication_service.dart';
import 'package:test_routing_flow/component/login/login_screen.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/app_navigator.dart';
import 'package:test_routing_flow/router/app_router.dart';
import 'package:test_routing_flow/router/app_shared_store.dart';

part 'authentication_state.dart';
part 'authentication_event.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  static const isAuthenticatedKey = 'isAuthenticated';
  final AppSharedStore _sharedStore = locator.get();
  final AuthenticationService _authenticationService = locator.get();
  AuthenticationBloc() : super(AuthenticationState.initial()) {
    on<AuthenticationEvent>(
      (event, emit) async {
        await event.when<Future<void>>(
          checkIsLoggedIn: () => _checkIsLoggedIn(emit),
          logout: () => _logout(emit),
        );
      },
    );
  }

  Future<bool?> isAuthenticated() async {
    final AppSharedStore sharedStore = locator.get();
    final isAuthenticated =
        await sharedStore.get<bool>(isAuthenticatedKey) ?? false;
    return isAuthenticated;
  }

  _checkIsLoggedIn(Emitter<AuthenticationState> emit) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(milliseconds: 1000));

    final isAuthenticated =
        await _sharedStore.get<bool>(isAuthenticatedKey) ?? false;
    if (!isAuthenticated) {
      emit(AuthenticationState.isNotLoggedIn());
      locator.get<AppNavigator>().push(LoginScreen.routerPath);
    }
    emit(AuthenticationState.isLoggedIn());
  }

  _logout(Emitter<AuthenticationState> emit) async {
    // show modal for confirmation
    final AppNavigator appNavigator = locator.get();
    // appNavigator
    final bool confirmation = await appNavigator.showAlertDialog(
          const LogoutConfirmationDialog(),
        ) ??
        false;

    if (!confirmation) {
      return;
    }

    await _sharedStore.delete(isAuthenticatedKey);
    await _authenticationService.refreshIsAuthenticated();
    emit(state.copyWith(isLoggedIn: false));
    appNavigator.push(LoginScreen.routerPath);
  }
}
