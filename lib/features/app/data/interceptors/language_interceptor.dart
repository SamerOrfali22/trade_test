import 'dart:async';

import 'package:dart_kit/dart_kit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/features/app/presentation/viewmodels/app_viewmodel.dart';

// responsible for attach current app language for each request header.
class LanguageInterceptor extends Interceptor with Loggable {
  LanguageInterceptor();

  @override
  String get loggerTag => 'LanguageInterceptor';

  late final appViewmodel = GetIt.I<AppViewmodel>();

  @override
  Future onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    handler.next(options..queryParameters['lang'] = appViewmodel.language.code);
  }
}
