part of 'theme_bloc.dart';

class NitTheme {
  NitTheme({
    this.backgroundColor,
    this.cardTextColor,
    this.contentTextColor,
    this.accentBackgroundColor,
    this.accentTextColor,
  });

  String? backgroundColor;
  String? cardTextColor;
  String? contentTextColor;
  String? accentBackgroundColor;
  String? accentTextColor;
}

@freezed
class ThemeState with _$ThemeState {
  static ThemeData whiteTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: GoogleFonts.nunitoTextTheme(),
    backgroundColor: Colors.white,
    primaryColor: Colors.amber,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: GoogleFonts.nunitoTextTheme().apply(bodyColor: Colors.white),
    backgroundColor: Colors.black,
    primaryColor: Colors.amber,
  );
  factory ThemeState({
    @Default(true) bool isLoading,
    required String themeName,
    required ThemeData themeData,
  }) = $$ThemeState;
  factory ThemeState.light() => ThemeState(
        themeData: ThemeState.whiteTheme,
        themeName: AppTheme.Light.name,
      );
}
