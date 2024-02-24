import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/base/presentation/theme/app_colors.dart';
import 'package:weather_app/base/presentation/theme/dimensions.dart';
import 'package:weather_app/base/presentation/theme/text_styles.dart';
import 'package:weather_app/features/app/presentation/ui-models/languages_enum.dart';

late AppDimens _dimensions;
late AppStyles _styles;
late AppColors _lightColors;
late AppColors _darkColors;

class AppTheme {
  const AppTheme._();

  static ThemeData provideThemeData(
    BuildContext buildContext, {
    required LanguageEnum language,
    required Brightness brightness,
  }) {
    final baseTheme = brightness == Brightness.light ? ThemeData.light() : ThemeData.dark();
    final colors = AppColors.getAppColors(brightness: brightness);
    if (brightness == Brightness.light) {
      _lightColors = colors;
    } else {
      _darkColors = colors;
    }

    _styles = AppStyles.getAppStyles(language, baseTheme.textTheme, colors.onPrimary);
    _dimensions = AppDimens.getDimensions();

    return baseTheme.copyWith(
      useMaterial3: true,
      colorScheme: colors,
      textTheme: _styles,
      primaryColor: colors.primary,
      primaryTextTheme: _styles,

      //
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      appBarTheme: _appBarTheme(colors),
      cardTheme: _cardTheme(),
      listTileTheme: _listTileTheme(colors),
      bottomAppBarTheme: _bottomAppBarTheme(colors),
      bottomNavigationBarTheme: _bottomNavigationBarTheme(colors),
      tabBarTheme: _tabBarTheme(colors),
      drawerTheme: _drawerTheme(colors),
      scaffoldBackgroundColor: colors.onPrimary,
      dividerTheme: DividerThemeData(color: colors.surface),
      inputDecorationTheme: _inputDecorationTheme(colors),
      dropdownMenuTheme: _dropDownMenuTheme(colors),
      dialogTheme: _dialogTheme(colors),

      snackBarTheme: SnackBarThemeData(
        backgroundColor: colors.onTertiary,
        contentTextStyle: _styles.bodyLarge,
        behavior: SnackBarBehavior.floating,
        insetPadding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 22.0.h),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0.r)),
      ),
    );
  }

  static ShapeBorder get _shapeMedium => RoundedRectangleBorder(borderRadius: BorderRadius.circular(8));

  static CardTheme _cardTheme() => CardTheme(elevation: 0, shape: _shapeMedium, clipBehavior: Clip.antiAlias);

  static BottomAppBarTheme _bottomAppBarTheme(ColorScheme colors) =>
      BottomAppBarTheme(color: colors.surface, elevation: 0);

  static ListTileThemeData _listTileTheme(ColorScheme colors) =>
      ListTileThemeData(shape: _shapeMedium, selectedColor: colors.secondary);

  static AppBarTheme _appBarTheme(ColorScheme colors) => AppBarTheme(
        elevation: 0,
        backgroundColor: colors.onPrimary,
        actionsIconTheme: IconThemeData(color: colors.outline),
      );

  static TabBarTheme _tabBarTheme(ColorScheme colors) => TabBarTheme(
        labelColor: colors.primary,
        labelStyle: _styles.displaySmall,
        unselectedLabelColor: colors.onSurfaceVariant,
        unselectedLabelStyle: _styles.displaySmall,
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(
          border: Border(bottom: BorderSide(color: colors.primary, width: 2)),
        ),
      );

  static BottomNavigationBarThemeData _bottomNavigationBarTheme(ColorScheme colors) => BottomNavigationBarThemeData(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: colors.surfaceVariant,
        selectedItemColor: colors.onSurface,
        unselectedItemColor: colors.onSurfaceVariant,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      );

  static DrawerThemeData _drawerTheme(ColorScheme colors) => DrawerThemeData(
        backgroundColor: colors.onPrimary,
        surfaceTintColor: colors.onPrimary,
      );

  static InputDecorationTheme _inputDecorationTheme(ColorScheme colors) {
    final defaultBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0.r),
      borderSide: BorderSide(color: colors.background),
    );
    final errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0.r),
      borderSide: BorderSide(color: colors.error),
    );
    final defaultTextStyle = _styles.headlineSmall!;

    return InputDecorationTheme(
      isDense: true,
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      labelStyle: defaultTextStyle.copyWith(color: colors.onSurface),
      hintStyle: defaultTextStyle.copyWith(color: colors.outline),
      fillColor: colors.background.withOpacity(.75),
      border: defaultBorder,
      enabledBorder: defaultBorder,
      focusedBorder: defaultBorder,
      focusedErrorBorder: errorBorder,
      errorBorder: errorBorder,
      errorMaxLines: 3,
    );
  }

  static DropdownMenuThemeData _dropDownMenuTheme(ColorScheme colors) => DropdownMenuThemeData(
        inputDecorationTheme: _inputDecorationTheme(colors),
      );

  static DialogTheme _dialogTheme(ColorScheme colors) {
    return DialogTheme(
      elevation: 6,
      backgroundColor: colors.background,
      surfaceTintColor: colors.background,
      titleTextStyle: _styles.displaySmall?.copyWith(color: colors.primary),
      contentTextStyle: _styles.titleLarge?.copyWith(color: colors.primary),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0.r)),
    );
  }
}

extension ThemeExtensions on ThemeData {
  AppDimens get dimensions => _dimensions;

  AppColors get colors => brightness == Brightness.light ? _lightColors : _darkColors;

  AppStyles get textStyles => _styles;

  Decoration get boxDecoration => ShapeDecoration(
        color: colors.onSecondaryContainer,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.50, color: Colors.white.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(15),
        ),
      );
}
