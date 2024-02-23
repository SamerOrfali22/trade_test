import 'package:flutter/material.dart';
import 'package:weather_app/features/app/presentation/ui-models/languages_enum.dart';

/// Abstract class containing constants used throughout the app.
abstract class AppConstants {
  const AppConstants._();

  /// The [Size] of the device in the design draft, in dp.
  ///
  static const Size designSize = Size(375, 812);

  static String get baseUrl => 'https://api.openweathermap.org/';

  static String get apiKey => '4e1f0c6268850e6f0f6037d4e9525191';

  /// The number of items to display per page in paginated lists.
  static const int paginationPageSize = 25;

  static const LanguageEnum defaultLanguage = LanguageEnum.English;
}
