import 'package:flutter/material.dart';
import 'package:geekreep/theme/light/colors.dart';

class Light {
  static var appTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      primary: LightThemeColours.primary,
      secondary: LightThemeColours.secondary,
      background: LightThemeColours.background,
      onBackground: LightThemeColours.white,
      surface: LightThemeColours.black,
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
