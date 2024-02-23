import 'dart:async';

import 'package:dart_kit/dart_kit.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/base/utils/constants/app_constants.dart';

class ApiKeyInterceptor extends Interceptor with Loggable {
  ApiKeyInterceptor();

  @override
  Future onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    handler.next(options..queryParameters['appid'] = AppConstants.apiKey);
  }

  @override
  String get loggerTag => 'ApiKeyInterceptor';
}
