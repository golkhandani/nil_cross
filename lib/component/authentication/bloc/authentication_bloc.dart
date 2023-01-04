import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/app_navigator.dart';
import 'package:test_routing_flow/router/app_router.dart';
import 'package:test_routing_flow/router/app_shared_store.dart';

part 'authentication_state.dart';
part 'authentication_event.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  static const isAuthenticatedKey = 'isAuthenticated';
  AuthenticationBloc() : super(AuthenticationState.initial()) {
    on<AuthenticationEvent>(
      (event, emit) async {
        await event.when<Future<void>>(
          checkIsLoggedIn: () => _checkIsLoggedIn(emit),
        );
      },
    );
  }

  Future<bool?> isAuthenticated() async {
    print("isAuthenticated started");
    final AppSharedStore sharedStore = locator.get();
    print(sharedStore);
    final isAuthenticated = await sharedStore.get<bool>(isAuthenticatedKey) ?? false;
    print("isAuthenticated $isAuthenticated");
    return isAuthenticated;
  }

  _checkIsLoggedIn(Emitter<AuthenticationState> emit) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(milliseconds: 1000));
    final AppSharedStore sharedStore = locator.get();
    final isAuthenticated = await sharedStore.get<bool>(isAuthenticatedKey) ?? false;
    if (!isAuthenticated) {
      emit(AuthenticationState.isNotLoggedIn());
      locator.get<AppNavigator>().push(LoginRouter());
    }
    emit(AuthenticationState.isLoggedIn());
  }
}
