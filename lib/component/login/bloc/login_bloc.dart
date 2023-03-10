import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_routing_flow/component/authentication/bloc/authentication_bloc.dart';
import 'package:test_routing_flow/component/authentication/service/authentication_service.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/dashboard_learning_path_list/dashboard_learning_path_list_screen.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_screen.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/app_navigator.dart';
import 'package:test_routing_flow/router/app_router.dart';
import 'package:test_routing_flow/router/app_shared_store.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AppSharedStore _appSharedStore = locator.get<AppSharedStore>();
  final AuthenticationService _authenticationService = locator.get();
  final AuthenticationBloc _authenticationBloc =
      locator.get<AuthenticationBloc>();
  LoginBloc() : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(
          viaEmail: (email, password) => _viaEmail(email, password, emit));
    });
  }

  String? _routeName;

  String get routeName => _routeName ?? DashboardScreen.routerName;
  // Creating the setter method
  // to set the input in Field/Property
  setSuccessRoute(String path) {
    if (_routeName != null) _routeName = routeName;
  }

  _viaEmail(String email, String password, Emitter<LoginState> emit) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(milliseconds: 1000));
    await _appSharedStore.set(AuthenticationBloc.isAuthenticatedKey, true);
    _authenticationBloc.add(const AuthenticationEvent.checkIsLoggedIn());
    emit(state.copyWith(isLoading: false, isLoggedIn: true));
    _authenticationService.refreshIsAuthenticated();
    await locator.get<AppNavigator>().replace(routeName);
  }
}
