part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoggedIn,
  }) = $$LoginState;
  factory LoginState.initial() => const LoginState();
}
