import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_routing_flow/component/authentication/bloc/authentication_bloc.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/app_navigator.dart';
import 'package:test_routing_flow/router/app_router.dart';
import 'package:test_routing_flow/router/app_shared_store.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(viaEmail: (email, password) => _viaEmail(email, password, emit));
    });
  }

  PageRouteInfo<dynamic>? _pageRouteInfo;

  PageRouteInfo get pageRouteInfo => _pageRouteInfo ?? const DashboardRouter();
  // Creating the setter method
  // to set the input in Field/Property
  setSuccessRoute(PageRouteInfo<dynamic>? route) {
    if (route != null) _pageRouteInfo = route;
  }

  _viaEmail(String email, String password, Emitter<LoginState> emit) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(milliseconds: 1000));
    await locator.get<AppSharedStore>().set(AuthenticationBloc.isAuthenticatedKey, true);
    final AuthenticationBloc authenticationBloc = locator.get<AuthenticationBloc>();
    authenticationBloc.add(const AuthenticationEvent.checkIsLoggedIn());
    emit(state.copyWith(isLoading: false, isLoggedIn: true));
    print(pageRouteInfo);
    locator.get<AppNavigator>().push(pageRouteInfo);
  }
}
