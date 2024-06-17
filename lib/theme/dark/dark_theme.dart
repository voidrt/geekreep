import 'package:flutter/material.dart';
import 'package:geekreep/theme/dark/colours.dart';

class Dark {
  static var appTheme = ThemeData(
    fontFamily: 'Ubuntu',
    useMaterial3: true,
    platform: TargetPlatform.android,
    scaffoldBackgroundColor: DarkThemeColours.background,
    colorScheme: const ColorScheme.dark(
      primary: DarkThemeColours.primary,
      secondary: DarkThemeColours.secondary,
      background: DarkThemeColours.background,
      onBackground: DarkThemeColours.darkGrey,
      surface: DarkThemeColours.textColor,
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
