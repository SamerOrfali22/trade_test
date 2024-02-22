import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/features/app/presentation/ui-models/languages_enum.dart';

class AppStyles extends TextTheme {
  const AppStyles._({
    super.headlineLarge,
    super.headlineMedium,
    super.headlineSmall,
    super.bodyLarge,
    super.bodyMedium,
    super.bodySmall,
    super.titleLarge,
    super.titleMedium,
    super.titleSmall,
    super.labelLarge,
    super.labelMedium,
    super.labelSmall,
    super.displayLarge,
    super.displayMedium,
    super.displaySmall,
  });

  factory AppStyles.fromTextTheme({
    required TextTheme textTheme,
  }) =>
      AppStyles._(
        headlineSmall: textTheme.headlineSmall,
        headlineMedium: textTheme.headlineMedium,
        headlineLarge: textTheme.headlineLarge,
        bodyLarge: textTheme.bodyLarge,
        bodyMedium: textTheme.bodyMedium,
        bodySmall: textTheme.bodySmall,
        titleLarge: textTheme.titleLarge,
        titleMedium: textTheme.titleMedium,
        titleSmall: textTheme.titleSmall,
        labelLarge: textTheme.labelLarge,
        labelMedium: textTheme.labelMedium,
        labelSmall: textTheme.labelSmall,
        displayLarge: textTheme.displayLarge,
        displayMedium: textTheme.displayMedium,
        displaySmall: textTheme.displaySmall,
      );

  static AppStyles getAppStyles(LanguageEnum languageEnum, TextTheme textTheme, Color displayColor) {
    return AppStyles.fromTextTheme(
      textTheme: textTheme
          .copyWith(
            displayLarge: textTheme.displayLarge?.copyWith(fontSize: 32.0.sp, fontWeight: FontWeight.w600),
            displayMedium: textTheme.displayMedium?.copyWith(fontSize: 24.0.sp, fontWeight: FontWeight.w600),
            displaySmall: textTheme.displaySmall?.copyWith(fontSize: 20.0.sp, fontWeight: FontWeight.w600),
            //
            headlineLarge: textTheme.headlineLarge?.copyWith(fontSize: 16.0.sp, fontWeight: FontWeight.w600),
            headlineMedium: textTheme.headlineMedium?.copyWith(fontSize: 14.0.sp, fontWeight: FontWeight.w600),
            headlineSmall: textTheme.headlineSmall?.copyWith(fontSize: 16.0.sp, fontWeight: FontWeight.w400),
            //
            titleLarge: textTheme.titleLarge?.copyWith(fontSize: 14.0.sp, fontWeight: FontWeight.w400),
            titleMedium: textTheme.titleMedium?.copyWith(fontSize: 12.0.sp, fontWeight: FontWeight.w400),
            // title small not used in eschool design system.
            titleSmall: textTheme.titleSmall,
            //
            // label's not used in eschool design system.
            labelLarge: textTheme.labelLarge,
            labelMedium: textTheme.labelMedium,

            // we have button style in design which is deprecated to use labelSmall
            labelSmall: textTheme.labelSmall?.copyWith(fontSize: 16.0.sp, fontWeight: FontWeight.w600),
            //
            bodyLarge: textTheme.bodyLarge?.copyWith(fontSize: 11.0.sp, fontWeight: FontWeight.w600),
            bodyMedium: textTheme.bodyMedium?.copyWith(fontSize: 8.0.sp, fontWeight: FontWeight.w600),
            // body small not used in eschool design system.
            bodySmall: textTheme.bodySmall?.copyWith(fontSize: 12.0.sp, fontWeight: FontWeight.w400),
          )
          .apply(
            fontFamily: languageEnum.fontFamily,
            displayColor: displayColor,
          ),
    );
  }
}
