import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

/// An enumeration of language codes and their corresponding properties.
enum LanguageEnum {
  /// English language.
  English('en'),

  /// Arabic language.
  Arabic('ar', isRtl: true),
  ;

  const LanguageEnum(
    this.code, {
    this.isRtl = false,
  });

  // The language code.
  final String code;

  /// A flag indicating whether the language is written from right to left.
  final bool isRtl;

  /// Returns the language as a [Locale] object.
  Locale? get asLocale => Locale(code);

  static LanguageEnum get defaultLanguage {
    final deviceLanguageCode = Platform.localeName.split('_').first;

    // if the default app language is not supported, fallback to english language.
    return LanguageEnum.values.firstWhereOrNull((it) => it.code == deviceLanguageCode) ?? LanguageEnum.English;
  }

  /// Return the opposite of the current language (if arabic return english and vice versa).
  LanguageEnum get opposite => this == LanguageEnum.English ? LanguageEnum.Arabic : LanguageEnum.English;

  String get translate => this == LanguageEnum.English ? 'English' : 'العربية';

  bool get isArabic => this == LanguageEnum.Arabic;

  bool get isEnglish => this == LanguageEnum.English;

  /// Returns the text theme for the language.
  String get fontFamily {
    switch (this) {
      case LanguageEnum.Arabic:
        return 'Alexandria';

      default:
        return 'Alexandria';
    }
  }
}
