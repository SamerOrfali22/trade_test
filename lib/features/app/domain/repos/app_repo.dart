import 'package:weather_app/features/app/presentation/ui-models/languages_enum.dart';
import 'package:weather_app/features/app/presentation/ui-models/theme_enum.dart';

/// The interface for an app repository, which is responsible for storing and
/// retrieving information about the app's language and theme preferences.
abstract class AppRepository {
  /// Changes the app's language preference to the specified language.
  ///
  /// Returns a [Future] that completes when the change has been persisted.
  Future<void> changeLanguage(LanguageEnum language);

  /// Returns a [Stream] that emits the current language preference.
  Stream<LanguageEnum> observeLanguage();

  /// Changes the app's theme preference to the specified theme.
  ///
  /// Returns a [Future] that completes when the change has been persisted.
  Future<void> changeTheme(ThemeEnum theme);

  /// Returns a [Stream] that emits the current theme preference.
  Stream<ThemeEnum> observeTheme();
}
