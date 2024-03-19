import 'dart:io';

import 'package:dart_kit/dart_kit.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/base/data/networking/http_client.dart';
import 'package:weather_app/base/data/sources/token_type.dart';
import 'package:weather_app/features/search/data/models/pagination_model.dart';

/// Abstract base class for a remote data source, which is responsible for making HTTP requests
/// to a server and handling the responses.
abstract class BaseRemoteSource with Loggable {
  const BaseRemoteSource(this._client);

  /// The base HTTP client used to make requests.
  final HttpClient _client;

  Future<Result<T>> _baseRequest<T>({
    required HttpMethod method,
    required String endpoint,
    required T Function(dynamic json) serializer,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool withAuth = true,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    CancelToken? cancelToken,
    TokenType tokenType = TokenType.Bearer,
    HttpContent contentType = HttpContent.Form,
    String? Function(Map<String, dynamic>)? customErrorHandler,
    String? baseUrl,
  }) async {
    // add auth flag to headers if `withAuth` is true
    final Options options = Options(
      headers: (headers ?? {})
        ..addAll({
          if (method == HttpMethod.POST || method == HttpMethod.PATCH) HttpHeaders.contentTypeHeader: contentType.value,
          HttpHeaders.acceptHeader: "application/json",
          HttpHeaders.userAgentHeader: "Ta3leem/org.ta3leem.mobile",
          HttpHeaders.connectionHeader: "Keep-Alive",
          HttpHeaders.acceptEncodingHeader: "gzip;q=1.0,compress;q=0.5",
          HttpHeaders.acceptLanguageHeader: "en-US;q=1.0,ar-AS;q=0.9",
          "Keep-Alive": "timeout=15, max=1000",
        }),
      extra: (!withAuth ? TokenType.None : tokenType).asExtra
        ..addAll({
          if (customErrorHandler != null) 'custom_error_handler': customErrorHandler,
        }),
    );
    return _client
        .request(
          endpoint,
          data: data,
          method: method,
          options: options,
          queryParameters: queryParameters,
          cancelToken: cancelToken,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress,
          baseUrl: baseUrl,
        )
        ._mapToResultBySerializer(
          loggerTag,
          (data) => T == bool && (data == null || data == '') ? (true as T) : serializer(data),
        );
  }

  /// Makes an HTTP request to the specified endpoint with the specified method and parameters.
  ///
  /// Returns a [Future] that completes with the result of the request as a [Result] object.
  ///
  /// The following parameters are available:
  /// [method] : The HTTP method to use for the request (e.g. GET, POST, DELETE).
  /// [endpoint] : The endpoint to make the request to.
  /// [serializer] : A function that takes the JSON response data and returns an object of type `T`.
  /// [data] : The data to send with the request.
  /// [queryParameters] : Query parameters to include in the request.
  /// [headers] : HTTP headers to include in the request.
  /// [withAuth] : Whether to include an authorization header in the request. Defaults to `true`.
  /// [onSendProgress] : A callback to be called when the request is being sent.
  /// [onReceiveProgress] : A callback to be called when the response is being received.
  /// [cancelToken] : A token that can be used to cancel the request.
  /// [tokenType] : Auth token type.
  Future<Result<T>> request<T>({
    required HttpMethod method,
    required String endpoint,
    required T Function(Map<String, dynamic> json) serializer,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool withAuth = true,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    CancelToken? cancelToken,
    TokenType tokenType = TokenType.Bearer,
    HttpContent contentType = HttpContent.Form,
    String? Function(Map<String, dynamic>)? customErrorHandler,
    String? baseUrl,
  }) =>
      _baseRequest(
        method: method,
        endpoint: endpoint,
        serializer: (data) => serializer(data == null ? {} : data as Map<String, dynamic>),
        cancelToken: cancelToken,
        contentType: contentType,
        data: data,
        headers: headers,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onSendProgress,
        queryParameters: queryParameters,
        tokenType: tokenType,
        withAuth: withAuth,
        customErrorHandler: customErrorHandler,
        baseUrl: baseUrl,
      );

  Future<Result<PaginationModel<T>>> paginatedRequest<T>({
    required HttpMethod method,
    required String endpoint,
    required T Function(Map<String, dynamic> json) serializer,
    required int page,
    int? pageSize,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool withAuth = true,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    CancelToken? cancelToken,
    TokenType tokenType = TokenType.Bearer,
    HttpContent contentType = HttpContent.Form,
    String? Function(Map<String, dynamic>)? customErrorHandler,
    String? baseUrl,
  }) =>
      _baseRequest<PaginationModel<T>>(
        method: method,
        endpoint: endpoint,
        serializer: (json) => PaginationModel<T>.fromJson(
          json as Map<String, dynamic>,
          (json) => serializer(json as Map<String, dynamic>),
        ),
        cancelToken: cancelToken,
        contentType: contentType,
        data: data,
        headers: headers,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onSendProgress,
        queryParameters: {
          // 'page': page,
          // 'page_size': pageSize ?? 10,
          ...?queryParameters,
        },
        tokenType: tokenType,
        withAuth: withAuth,
        customErrorHandler: customErrorHandler,
        baseUrl: baseUrl,
      );
}

extension ResponseExtensions on Future<Response<dynamic>> {
  /// Processes the response and returns the result as a [Result] object.
  ///
  /// The following parameters are available:
  /// [serializer] : A function that takes the JSON response data and returns an object of type `R`.
  Future<Result<R>> _processCall<R>(
    String loggerTag, {
    R Function(dynamic json)? serializer,
  }) =>
      then((it) {
        if (it.isSuccess) {
          return Result<R>.data(ResultOrigin.network, serializer?.call(it.data) ?? it.data! as R);
        }
        return Result<R>.error(ResultOrigin.network, it);
      }).catchError((Object it, StackTrace st) {
        Logger.e('$loggerTag:', it, st);
        return Result<R>.error(ResultOrigin.network, it, st);
      });

  Future<Result<R>> _mapToResultBySerializer<R>(String loggerTag, R Function(dynamic json) serializer) =>
      _processCall<R>(loggerTag, serializer: serializer);
}
