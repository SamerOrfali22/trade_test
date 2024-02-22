import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:rx_viewmodels/viewmodel.dart';
import 'package:rxdart/transformers.dart';
import 'package:weather_app/base/presentation/viewmodels/base_viewmodel.dart';
import 'package:weather_app/base/utils/app_constants.dart';
import 'package:weather_app/base/utils/formatters/app_formatter.dart';
import 'package:weather_app/features/app/domain/repos/app_repo.dart';
import 'package:weather_app/features/app/presentation/ui-models/languages_enum.dart';
import 'package:weather_app/features/app/presentation/ui-models/theme_enum.dart';

/// A base app-level viewmodel.
abstract class BaseAppViewmodel extends BaseViewmodel {
  BaseAppViewmodel(this.appRepository);

  /// The app's repository.
  final AppRepository appRepository;

  /// The language of the app.
  late final Rx<LanguageEnum> _language = AppConstants.defaultLanguage.obs..disposeBy(this);

  LanguageEnum get language => _language.value;

  /// The theme of the app.
  late final Rx<ThemeEnum> _theme = ThemeEnum.SystemDefault.obs..disposeBy(this);

  ThemeEnum get theme => _theme.value;

  /// The stream of the app's connection status.
  late final Rxn<ConnectivityResult> connectionStatusStream = Rxn();

  ConnectivityResult? get connectionStatus => connectionStatusStream.value;

  bool get hasInternetConnection => connectionStatus != ConnectivityResult.none;

  @override
  void onPostFrame(BuildContext context) {
    // we must bind streams that depend on context inside `onPostFrame` to guarantee that MaterialApp is initiated.
    _language.bindStream(
      appRepository.observeLanguage().doOnData(onLanguageChanged),
    );

    _theme.bindStream(
      appRepository.observeTheme().doOnData(onThemeChanged),
    );

    connectionStatusStream
      ..bindStream(
        Connectivity().checkConnectivity().asStream().switchMap((initialStatus) async* {
          yield initialStatus;
          yield* Connectivity().onConnectivityChanged;
        }),
      )
      ..disposeBy(this);

    super.onPostFrame(context);
  }

  Future<void> changeLanguage(LanguageEnum language) async {
    if (this.language == language) {
      return;
    }
    d('changing language to $language');
    return appRepository.changeLanguage(language).collectStatus(this);
  }

  void onLanguageChanged(LanguageEnum language) {
    d('language changed to $language');
    AppFormatter.onLanguageChanged(language);
  }

  Future<void> changeTheme(ThemeEnum theme) async {
    if (this.theme == theme) {
      return;
    }

    d('changing theme to $theme');
    return appRepository.changeTheme(theme).collectStatus(this);
  }

  void onThemeChanged(ThemeEnum theme) {
    d('theme changed to $theme');
  }
}
