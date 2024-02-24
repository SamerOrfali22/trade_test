import 'package:flutter/material.dart';

@immutable
class AppColors extends ColorScheme {
  const AppColors({
    required super.brightness,
    required super.primary,
    required super.onPrimary,
    required super.secondary,
    required super.onSecondary,
    required super.error,
    required super.onError,
    required super.background,
    required super.onBackground,
    required super.surface,
    required super.onSurface,
    required this.changeRequest,
    required this.onChangeRequest,
    required this.radialGradient,
    required this.onRadialGradient,
    required this.radialGradientGray,
    required this.primaryHighlight,
    required this.secondaryHighlight,
    super.primaryContainer,
    super.onPrimaryContainer,
    super.secondaryContainer,
    super.onSecondaryContainer,
    super.tertiary,
    super.onTertiary,
    super.tertiaryContainer,
    super.onTertiaryContainer,
    super.errorContainer,
    super.onErrorContainer,
    super.surfaceVariant,
    super.onSurfaceVariant,
    super.outline,
    super.outlineVariant,
    super.shadow,
    super.scrim,
    super.inverseSurface,
    super.onInverseSurface,
    super.inversePrimary,
    super.surfaceTint,
  });

  final Color changeRequest;
  final Color onChangeRequest;

  final Color primaryHighlight;
  final Color secondaryHighlight;

  final RadialGradient radialGradient;
  final Color onRadialGradient;
  final RadialGradient radialGradientGray;

  static AppColors getAppColors({required Brightness brightness}) {
    return brightness == Brightness.light ? _lightColorScheme() : _darkColorScheme();
  }

  static AppColors _lightColorScheme() => const AppColors(
        brightness: Brightness.light,
        primary: Color(0xFF006879),

        onPrimary: Color(0xFFFFFFFF),
        primaryContainer: Color(0xFFA9EDFF),
        onPrimaryContainer: Color(0xFF001F26),
        //
        secondary: Color(0xFF286C2A),
        onSecondary: Color(0xFFFFFFFF),
        secondaryContainer: Color(0xFFABF4A2),
        onSecondaryContainer: Color(0x332C333F),
        //
        tertiary: Color(0xFF006783),
        onTertiary: Color(0xFF003546),
        tertiaryContainer: Color(0xFF004D63),
        onTertiaryContainer: Color(0xFFBCE9FF),
        //
        error: Color(0xFF9C413C),
        onError: Color(0xFFFFFFFF),
        errorContainer: Color(0xFFFFDAD6),
        onErrorContainer: Color(0xFF410003),
        //
        background: Color(0xFFFFFBFF),
        onBackground: Color(0xFF1C1B1E),
        //
        surface: Color(0xFFFDF8FD),
        onSurface: Color(0xFF1C1B1E),
        surfaceVariant: Color(0xFFDBE4E7),
        onSurfaceVariant: Color(0xFF3F484B),
        outline: Color(0xFF6F797B),
        //
        changeRequest: Color(0xFFF5DD00),
        onChangeRequest: Color(0xFF1C1B1E),
        // gradients
        radialGradient: RadialGradient(
          center: Alignment(-1.0, -1.0),
          radius: 1.5,
          colors: [Color(0xFFB9D18D), Color(0xFF338E9D)],
          stops: [0, 1],
        ),
        onRadialGradient: Color(0xFFFFFFFF),
        radialGradientGray: RadialGradient(
          center: Alignment(-0.8, -0.6),
          colors: [Color(0xFFFFFFFF), Color(0xFF929292)],
          radius: 1.0,
        ),
        //
        primaryHighlight: Color(0xFFE0F4FF),
        secondaryHighlight: Color(0xFFE9F2F5),
      );

  static AppColors _darkColorScheme() => const AppColors(
        brightness: Brightness.dark,
        primary: Color(0xFF54D7F2),
        onPrimary: Color(0xFFFFFFFF),
        primaryContainer: Color(0xFFA9EDFF),
        onPrimaryContainer: Color(0xFF001F26),
        //
        secondary: Color(0xFF90D889),
        onSecondary: Color(0xFF003909),
        secondaryContainer: Color(0xFF095314),
        onSecondaryContainer: Color(0x332C333F),
        //
        tertiary: Color(0xFF006783),
        onTertiary: Color(0xFF003546),
        tertiaryContainer: Color(0xFF004D63),
        onTertiaryContainer: Color(0xFFBCE9FF),
        //
        error: Color(0xFFFFB3AD),
        onError: Color(0xFF5F1413),
        errorContainer: Color(0xFF7E2A27),
        onErrorContainer: Color(0xFFFFDAD6),
        //
        background: Color(0xFF1C1B1E),
        onBackground: Color(0xFFE6E1E6),
        //
        surface: Color(0xFF141316),
        onSurface: Color(0xFFCAC5CA),
        surfaceVariant: Color(0xFF3F484B),
        onSurfaceVariant: Color(0xFFBFC8CB),
        outline: Color(0xFF899295),
        //
        changeRequest: Color(0xFFF5DD00),
        onChangeRequest: Color(0xFF1C1B1E),
        // gradients
        radialGradient: RadialGradient(
          center: Alignment(-0.8, -0.6),
          colors: [Color(0xFFB9D18D), Color(0xFF338E9D)],
          radius: 1.0,
        ),
        onRadialGradient: Color(0xFFFFFFFF),
        radialGradientGray: RadialGradient(
          center: Alignment(-0.8, -0.6),
          colors: [Color(0xFFFFFFFF), Color(0xFF929292)],
          radius: 1.0,
        ),
        //
        primaryHighlight: Color(0xFFE0F4FF),
        secondaryHighlight: Color(0xFFE9F2F5),
      );
}
