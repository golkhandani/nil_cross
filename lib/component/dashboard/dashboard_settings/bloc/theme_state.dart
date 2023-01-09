part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  factory ThemeState({
    @Default(true) bool isLoading,
    required String themeName,
    required ThemeData themeData,
  }) = $$ThemeState;
  factory ThemeState.light() => ThemeState(
        themeData: ThemeData(),
        themeName: AppTheme.Light.name,
      );
}
