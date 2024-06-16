import 'package:flutter/material.dart';
import 'package:geekreep/theme/dark/colours.dart';

class Dark {
  static var appTheme = ThemeData(
    fontFamily: 'Ubuntu',
    useMaterial3: true,
    platform: TargetPlatform.android,
    scaffoldBackgroundColor: DarkThemeColours.background,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: DarkThemeColours.primary,
      primary: DarkThemeColours.primary,
      secondary: DarkThemeColours.secondary,
      background: DarkThemeColours.background,
      onBackground: DarkThemeColours.darkGrey,
      inverseSurface: DarkThemeColours.textWhite,
      shadow: DarkThemeColours.black,
    ),
    dividerColor: Colors.transparent,
    dividerTheme: const DividerThemeData(
      thickness: 0.5,
      color: DarkThemeColours.lightGrey,
    ),
    buttonTheme: const ButtonThemeData(
      splashColor: Colors.transparent,
    ),
  );
}
