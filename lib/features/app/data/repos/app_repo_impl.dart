import 'package:dart_kit/dart_kit.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/base/utils/app_constants.dart';
import 'package:weather_app/features/app/data/sources/locale_source/language_local_source.dart';
import 'package:weather_app/features/app/data/sources/locale_source/theme_locale_source.dart';
import 'package:weather_app/features/app/domain/repos/app_repo.dart';
import 'package:weather_app/features/app/presentation/ui-models/languages_enum.dart';
import 'package:weather_app/features/app/presentation/ui-models/theme_enum.dart';

@Singleton(as: AppRepository)
class AppRepositoryImpl implements AppRepository {
  const AppRepositoryImpl(this._languageLocalSource, this._themeLocalSource);

  final LanguageLocalSource _languageLocalSource;
  final ThemeLocalSource _themeLocalSource;

  @override
  Future<void> changeLanguage(LanguageEnum language) => _languageLocalSource.write('', language);

  @override
  Stream<LanguageEnum> observeLanguage() => _languageLocalSource.reader('').mapNullTo(
        () => AppConstants.defaultLanguage,
      );

  @override
  Future<void> changeTheme(ThemeEnum theme) => _themeLocalSource.write('', theme);

  ///this if I want to save the theme locally
  ///but for weather app I don't want to save it
  ///I want to be based if Day or Night
  ///but I kept the ability to change the theme to see both
  // @override
  // Stream<ThemeEnum> observeTheme() => _themeLocalSource.reader('').mapNullTo(() => ThemeEnum.themeBasedOnDay);
  @override
  Stream<ThemeEnum> observeTheme() => Stream.value(ThemeEnum.themeBasedOnDay);
}
