part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.checkIsLoggedIn() = _AuthenticationEventCheckIsLoggedIn;
  const factory AuthenticationEvent.logout() = _AuthenticationEventLogout;
}
