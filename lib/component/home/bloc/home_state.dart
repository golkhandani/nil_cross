part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    Home? home,
  }) = $$HomeState;
  factory HomeState.initial() => const HomeState(isLoading: true);
}
