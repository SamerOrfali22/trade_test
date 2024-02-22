import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/base/presentation/routing/app_router.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/base/utils/localizations_generated/l10n.dart';

abstract class Resources {
  const Resources._();

  /// Returns the app localizations
  /// It should be used only in spacial cases when the context is not available
  /// It's recommended to use `context.localizations` extension method.
  /// This property doesn't notify the widget with language changes,
  /// so if the language changes or the localization are load async,
  /// the app language will not be consistent.
  static late AppLocalizations localizations;

  /// Returns the app theme data
  /// It should be used only in spacial cases when the context is not available
  /// It's recommended to use `context.theme` extension method.
  /// This property doesn't notify the widget with theme changes,
  /// so if the theme changes the app theme will not be consistent.
  static late ThemeData theme;
  static late TextTheme textTheme;
  static late ColorScheme colors;

  /// Returns the app router
  /// It should be used only in spacial cases when the context is not available
  /// and we want to navigate with top level router.
  /// It's recommended to use `context.router` extension method.
  /// note: navigating without context is not recommended in nested navigation
  /// unless you use navigate instead of push and you provide a full hierarchy.
  /// e.g `Resources.router.navigate(SecondRoute(children: [SubChild2Route()])`
  static AppRouter get router => GetIt.I<AppRouter>();

  static BuildContext? get appContext => router.navigatorKey.currentContext;

  static void setup(BuildContext appContext) {
    localizations = appContext.localizations;
    theme = appContext.theme;
    textTheme = theme.textTheme;
    colors = theme.colorScheme;
  }
}
