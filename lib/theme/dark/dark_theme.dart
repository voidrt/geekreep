import 'package:flutter/material.dart';
import 'package:geekreep/theme/dark/colours.dart';
import 'package:geekreep/theme/text_theme.dart';

class Dark {
  static var appTheme = ThemeData(
    fontFamily: 'Exo',
    useMaterial3: true,
    scaffoldBackgroundColor: DarkThemeColours.background,
    platform: TargetPlatform.android,
    textTheme: const TextTheme(
      displaySmall: GeekieTextStyle.subtitleText,
      displayMedium: GeekieTextStyle.standardText,
      headlineSmall: GeekieTextStyle.headlineText,
    ),
    colorScheme: const ColorScheme.dark(
      primary: DarkThemeColours.primary,
      secondary: DarkThemeColours.secondary,
      background: DarkThemeColours.background,
      onBackground: DarkThemeColours.darkGrey,
      surface: DarkThemeColours.textColor,
      inverseSurface: DarkThemeColours.textColor,
      shadow: DarkThemeColours.black,
    ),
    dividerTheme: const DividerThemeData(
      thickness: 0.5,
      color: DarkThemeColours.textColor,
    ),
    buttonTheme: const ButtonThemeData(
      splashColor: Colors.transparent,
    ),
  );
}
