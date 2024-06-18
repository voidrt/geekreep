import 'package:flutter/material.dart';
import 'package:geekreep/theme/light/colors.dart';
import 'package:geekreep/theme/text_theme.dart';

class Light {
  static var appTheme = ThemeData(
    fontFamily: 'Exo',
    useMaterial3: true,
    scaffoldBackgroundColor: LightThemeColours.background,
    textTheme: const TextTheme(
      displaySmall: GeekieTextStyle.subtitleText,
      displayMedium: GeekieTextStyle.standardText,
      headlineSmall: GeekieTextStyle.headlineText,
    ),
    colorScheme: const ColorScheme.light(
      primary: LightThemeColours.primary,
      secondary: LightThemeColours.secondary,
      background: LightThemeColours.background,
      onBackground: LightThemeColours.white,
      surface: LightThemeColours.black,
      inverseSurface: LightThemeColours.white,
      shadow: LightThemeColours.black,
    ),
    dividerTheme: const DividerThemeData(
      thickness: 0.5,
    ),
    buttonTheme: const ButtonThemeData(
      splashColor: Colors.transparent,
    ),
  );
}
