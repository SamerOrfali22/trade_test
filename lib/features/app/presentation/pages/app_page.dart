import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/state_manager.dart';
import 'package:rx_viewmodels/viewmodel.dart';
import 'package:weather_app/base/presentation/pages/base_page.dart';
import 'package:weather_app/base/presentation/pages/no_internet_page.dart';
import 'package:weather_app/base/presentation/theme/app_theme.dart';
import 'package:weather_app/base/presentation/widgets/base_snackbar.dart';
import 'package:weather_app/base/utils/constants/app_constants.dart';
import 'package:weather_app/base/utils/localizations_generated/l10n.dart';
import 'package:weather_app/base/utils/resources/resources.dart';
import 'package:weather_app/base/utils/ui_utils/animations/switchers_animation.dart';
import 'package:weather_app/features/app/presentation/viewmodels/app_viewmodel.dart';

/// This class is the root page of the app. It provides the app-level configuration
/// such as theme, localization, navigation, and media query.
class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends BasePage<AppPage, AppViewmodel> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        viewmodel
          ..theme
          ..language
          ..hasInternetConnection;

        return ScreenUtilInit(
          designSize: AppConstants.designSize,
          builder: (context, child) => MaterialApp.router(
            // THEME
            debugShowCheckedModeBanner: false,
            themeMode: viewmodel.theme.asThemeModel,
            darkTheme: AppTheme.provideThemeData(context, language: viewmodel.language, brightness: Brightness.dark),
            theme: AppTheme.provideThemeData(context, language: viewmodel.language, brightness: Brightness.light),
            // LOCALIZATION
            locale: viewmodel.language.asLocale,
            supportedLocales: AppLocalizations.delegate.supportedLocales,
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            // NAVIGATION
            routeInformationParser: Resources.router.defaultRouteParser(),
            // MEDIA QUERY
            routerDelegate: Resources.router.delegate(),
            builder: (context, child) {
              Resources.setup(context);

              return AnimatedSwitcher2(
                showChild: viewmodel.hasInternetConnection,
                child2: const NoInternetPage(),
                child: child!,
              );
            },
          ),
        );
      },
    );
  }

  /// This method is called when a general error occurs in the app.
  /// The default implementation shows a snackbar with the error message.
  @override
  void onGeneralError(UiError error) {
    Resources.router.navigatorKey.currentContext?.let(
      (context) => ScaffoldMessenger.of(context).showSnackBar(
        BaseSnackBar(
          message: error.error.toString(),
          type: SnackBarType.Error,
        ),
      ),
    );
  }

  @override
  String get loggerTag => 'AppPage';

  @override
  bool get skipInit => true;
}
