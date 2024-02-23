import 'package:flutter/material.dart';

/// An enumeration of themes.
enum ThemeEnum {
  /// The light theme.
  Light('light'),

  /// The dark theme.
  Dark('dark'),
  ;

  const ThemeEnum(this.theme);

  /// The name of the theme.
  final String theme;

  /// Returns the theme as a [ThemeMode] object.
  ThemeMode get asThemeModel => ThemeMode.values.byName(theme);

  bool get isLight => this == ThemeEnum.Light;

  static ThemeEnum get themeBasedOnDay =>
      (DateTime.now().hour > 6 && DateTime.now().hour < 18) ? ThemeEnum.Light : ThemeEnum.Dark;
}
