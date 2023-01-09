part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.loadTheme() = _ThemeEventLoadTheme;
  const factory ThemeEvent.switchTheme() = _ThemeEventSwitchTheme;
}
