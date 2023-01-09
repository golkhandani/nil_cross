part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadData() = _HomeEventLoadData;
  const factory HomeEvent.goToLogin() = _HomeEventGoToLogin;
  const factory HomeEvent.goToDashboard() = _HomeEventGoToDashboard;
}
