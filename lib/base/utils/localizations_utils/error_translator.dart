import 'package:weather_app/base/data/networking/network_exceptions.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/base/utils/resources/resources.dart';

abstract class ErrorTranslator {
  ErrorTranslator._();

  static String translate(dynamic error) {
    if (error is String) {
      return error;
    }

    if (error is TranslatableException) {
      return error.getErrorMessage();
    }

    return Resources.appContext?.localizations.general_error ?? '';
  }
}
