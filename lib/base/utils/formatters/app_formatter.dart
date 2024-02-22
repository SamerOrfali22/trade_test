import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:weather_app/features/app/presentation/ui-models/languages_enum.dart';

const _arabicDigits = ['۰', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];

class AppFormatter {
  const AppFormatter._();

  static late LanguageEnum _lastLanguage;
  static late DateFormat _dateFormatter;
  static late DateFormat _dateWithDayFormatter;
  static late DateFormat _birthDateFormatter;
  static late DateFormat _timeFormatter;
  static late NumberFormat _decimalFormatter;
  static late NumberFormat _priceFormatter;
  static late NumberFormat _humanFormatter;

  static String get _code => _lastLanguage.code;

  static String get _shortCode => '${_code}_short';

  /// [DateTime] date type formatters
  ///
  /// format [DateTime] to [String] in YEAR_ABBR_MONTH_DAY with time format and localized based on [_lastLanguage].
  static String dateAsLocalized(DateTime date) => _dateFormatter.format(date);

  /// [DateTime] date type formatters
  ///
  /// format [DateTime] to [String] in [EEEE d 'of' MMMM, y] format and localized based on [_lastLanguage].
  static String asDateWithDay(DateTime date) => _dateWithDayFormatter.format(date);

  /// [DateTime] date type formatters
  ///
  /// format [DateTime] to [String] in YEAR_ABBR_MONTH_DAY format and localized based on [_lastLanguage].
  static String asBirthDate(DateTime date) => _birthDateFormatter.format(date);

  /// [DateTime] date type formatters
  ///
  /// format [DateTime] to [String] in HH:mm format and localized based on [_lastLanguage].
  static String asTime(DateTime date) => _timeFormatter.format(date);

  /// [DateTime] date type formatters
  ///
  /// format [DateTime] to [String] in HH:mm YEAR_ABBR_MONTH_DAY  format and localized based on [_lastLanguage].
  static String timeDateAsLocalized(DateTime date) => _dateFormatter.format(date);

  /// format [DateTime] to [String] in a future fuzzy way like `1 minutes from now`, based on [_lastLanguage].
  static String dateAsFuzzyFuture(DateTime date) => timeago.format(date, allowFromNow: true, locale: _code);

  /// format [DateTime] to [String] in a future fuzzy way like `1m`, based on [_lastLanguage].
  static String dateAsFuzzyFutureShort(DateTime date) => timeago.format(date, allowFromNow: true, locale: _shortCode);

  /// format [DateTime] to [String] in a past fuzzy way like `a moment ago`, based on [_lastLanguage].
  static String dateAsFuzzyPast(DateTime date) => timeago.format(date, locale: _code);

  /// format [DateTime] to [String] in a short past fuzzy way like `1m`, based on [_lastLanguage].
  static String dateAsFuzzyPastShort(DateTime date) => timeago.format(date, locale: _shortCode);

  /// [DateTime] date type formatters
  ///
  /// format [int] to [String] in human readable way like `2K`, based on [_lastLanguage].
  static String numberAsHumanReadable(int number) => _humanFormatter.format(number);

  /// format [int] to [String] in decimal way like `2,000`, based on [_lastLanguage].
  static String numberAsDecimal(int number) => _decimalFormatter.format(number);

  /// format [int] to [String] in price way like `$1,200,000`.
  static String numberAsPrice(int number) => _priceFormatter.format(number);

  static String numberAsLocalized(String digit) {
    if (_lastLanguage != LanguageEnum.Arabic) {
      return digit;
    }

    var character = '';
    for (var i = 0; i < digit.length; i++) {
      character += _arabicDigits[int.parse(digit[i])];
    }
    return character;
  }

  /// called each time [appLanguage] changed so we can update the formatters with the new language.
  static void onLanguageChanged(LanguageEnum appLanguage) {
    _lastLanguage = appLanguage;
    _dateFormatter = DateFormat.yMMMd(_code).add_jm();
    _birthDateFormatter = DateFormat.yMMMd(_code);
    _dateWithDayFormatter = DateFormat('EEEE d, MMMM y', _code);
    _timeFormatter = DateFormat.jm(_code);
    _decimalFormatter = NumberFormat.decimalPattern(_code);
    _humanFormatter = NumberFormat.compact(locale: _code);
    _priceFormatter = NumberFormat.currency(
      locale: _code,
      decimalDigits: 0,
      name: appLanguage.isArabic ? 'دينار عراقي' : ' IQD ',
    );

    // add arabic translations to `timeago` library.
    // note: no need to sync english cuz timeago have english  by default.
    if (_code == LanguageEnum.Arabic.code) {
      timeago.setLocaleMessages(appLanguage.code, timeago.ArMessages());
      timeago.setLocaleMessages('${appLanguage.code}_short', timeago.ArShortMessages());
    }
  }
}
