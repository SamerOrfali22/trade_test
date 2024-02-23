import 'package:dart_kit/dart_kit.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:weather_app/base/data/networking/dio_http_client.dart';
import 'package:weather_app/base/data/networking/http_client.dart';
import 'package:weather_app/base/utils/constants/app_constants.dart';
import 'package:weather_app/features/app/data/interceptors/api_key_interceptor.dart';
import 'package:weather_app/features/app/data/interceptors/language_interceptor.dart';

class NetworkModules {
  static const String base = 'base';
}

@module
abstract class NetworkModule {
  @Named(NetworkModules.base)
  String get apiBaseUrl => AppConstants.baseUrl;

  @injectable
  @Named(NetworkModules.base)
  BaseOptions dioOptions(@Named(NetworkModules.base) String baseUrl) => BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(milliseconds: 15000),
        receiveTimeout: const Duration(milliseconds: 15000),
        contentType: 'application/json;charset=utf-8',
        responseType: ResponseType.plain,
        headers: <String, String>{
          'Accept': 'application/json',
          'Connection': 'keep-alive',
        },
      );

  @singleton
  Dio dio(@Named(NetworkModules.base) BaseOptions options) => _buildDio(options);

  @singleton
  HttpClient httpClient(Dio dio) => DioHttpClient(dio);
}

Dio _buildDio(
  BaseOptions options,
) =>
    Dio(options).also(
      (dio) => dio.interceptors.addAll(
        <Interceptor>[
          LanguageInterceptor(),
          ApiKeyInterceptor(),
          createRetryStrategy(dio),
          if (kDebugMode) PrettyDioLogger(requestHeader: true, requestBody: true)
        ],
      ),
    );

RetryInterceptor createRetryStrategy(Dio dio) => RetryInterceptor(
      dio: dio,
      retryEvaluator: DefaultRetryEvaluator(
        <int>{
          status408RequestTimeout,
          // status429TooManyRequests,
          // status500InternalServerError,
          status502BadGateway,
          status503ServiceUnavailable,
          status504GatewayTimeout,
          status440LoginTimeout,
          status499ClientClosedRequest,
          status460ClientClosedRequest,
          status598NetworkReadTimeoutError,
          status599NetworkConnectTimeoutError,
          status520WebServerReturnedUnknownError,
          status521WebServerIsDown,
          status522ConnectionTimedOut,
          status523OriginIsUnreachable,
          status524TimeoutOccurred,
          status525SSLHandshakeFailed,
          status527RailgunError,
        },
      ).evaluate,
      retryDelays: const [
        Duration(seconds: 1), // wait 1 sec before first retry
        Duration(seconds: 2), // wait 2 sec before second retry
        Duration(seconds: 3), // wait 3 sec before third retry
      ],
    );
