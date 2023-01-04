part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoggedIn,
  }) = $$AuthenticationState;

  factory AuthenticationState.initial() => const AuthenticationState();
  factory AuthenticationState.loading() => const AuthenticationState(
        isLoading: true,
      );
  factory AuthenticationState.isLoggedIn() => const AuthenticationState(
        isLoggedIn: true,
        isLoading: false,
      );
  factory AuthenticationState.isNotLoggedIn() => const AuthenticationState(
        isLoggedIn: false,
        isLoading: false,
      );
}
