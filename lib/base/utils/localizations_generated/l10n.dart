// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(_current != null,
        'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Unable to connect to the internet`
  String get no_internet_connection {
    return Intl.message(
      'Unable to connect to the internet',
      name: 'no_internet_connection',
      desc: '',
      args: [],
    );
  }

  /// `Please check you internet connection and go online to resume`
  String get no_internet_connection_message {
    return Intl.message(
      'Please check you internet connection and go online to resume',
      name: 'no_internet_connection_message',
      desc: '',
      args: [],
    );
  }

  /// `retry`
  String get retry {
    return Intl.message(
      'retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Please update the app to version {version}`
  String msg_app_update(Object version) {
    return Intl.message(
      'Please update the app to version $version',
      name: 'msg_app_update',
      desc: '',
      args: [version],
    );
  }

  /// `Something went wrong, please retry`
  String get general_error {
    return Intl.message(
      'Something went wrong, please retry',
      name: 'general_error',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continue_ {
    return Intl.message(
      'Continue',
      name: 'continue_',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `No data found`
  String get empty_data {
    return Intl.message(
      'No data found',
      name: 'empty_data',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Backend Url: {url}`
  String backend_url(Object url) {
    return Intl.message(
      'Backend Url: $url',
      name: 'backend_url',
      desc: '',
      args: [url],
    );
  }

  /// `Version: {version}`
  String build(Object version) {
    return Intl.message(
      'Version: $version',
      name: 'build',
      desc: '',
      args: [version],
    );
  }

  /// `Current Date: {date}`
  String current_date(Object date) {
    return Intl.message(
      'Current Date: $date',
      name: 'current_date',
      desc: '',
      args: [date],
    );
  }

  /// `Current Day: {day}`
  String current_day(Object day) {
    return Intl.message(
      'Current Day: $day',
      name: 'current_day',
      desc: '',
      args: [day],
    );
  }

  /// `Test Crashlytics`
  String get test_crashlytics {
    return Intl.message(
      'Test Crashlytics',
      name: 'test_crashlytics',
      desc: '',
      args: [],
    );
  }

  /// `Products`
  String get products {
    return Intl.message(
      'Products',
      name: 'products',
      desc: '',
      args: [],
    );
  }

  /// `Open Example`
  String get open_example {
    return Intl.message(
      'Open Example',
      name: 'open_example',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Search Products`
  String get search_products {
    return Intl.message(
      'Search Products',
      name: 'search_products',
      desc: '',
      args: [],
    );
  }

  /// `Reset Category`
  String get reset_category {
    return Intl.message(
      'Reset Category',
      name: 'reset_category',
      desc: '',
      args: [],
    );
  }

  /// `Cart {id} Details`
  String cart_details(Object id) {
    return Intl.message(
      'Cart $id Details',
      name: 'cart_details',
      desc: '',
      args: [id],
    );
  }

  /// `id : {id}`
  String cart_id(Object id) {
    return Intl.message(
      'id : $id',
      name: 'cart_id',
      desc: '',
      args: [id],
    );
  }

  /// `user id : {id}`
  String cart_user_id(Object id) {
    return Intl.message(
      'user id : $id',
      name: 'cart_user_id',
      desc: '',
      args: [id],
    );
  }

  /// `total : {total}`
  String total(Object total) {
    return Intl.message(
      'total : $total',
      name: 'total',
      desc: '',
      args: [total],
    );
  }

  /// `total discount : {totalDiscount}`
  String total_discount(Object totalDiscount) {
    return Intl.message(
      'total discount : $totalDiscount',
      name: 'total_discount',
      desc: '',
      args: [totalDiscount],
    );
  }

  /// `total products : {totalProducts}`
  String total_products(Object totalProducts) {
    return Intl.message(
      'total products : $totalProducts',
      name: 'total_products',
      desc: '',
      args: [totalProducts],
    );
  }

  /// `total quantity : {totalQuantity}`
  String total_quantity(Object totalQuantity) {
    return Intl.message(
      'total quantity : $totalQuantity',
      name: 'total_quantity',
      desc: '',
      args: [totalQuantity],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
