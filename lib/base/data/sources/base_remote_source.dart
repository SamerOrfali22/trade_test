import 'dart:convert';

import 'package:dart_kit/dart_kit.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/base/data/models/base_list_response_model.dart';
import 'package:weather_app/base/data/models/base_response_model.dart';
import 'package:weather_app/base/data/models/paginated_model.dart';
import 'package:weather_app/base/data/models/paginated_request_model.dart';
import 'package:weather_app/base/data/networking/http_client.dart';
import 'package:weather_app/base/data/sources/token_type.dart';

/// Abstract base class for a remote data source, which is responsible for making HTTP requests
/// to a server and handling the responses.
abstract class BaseRemoteSource with Loggable {
  const BaseRemoteSource(this._client);

  /// The base HTTP client used to make requests.
  final HttpClient _client;

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
  Future<Result<T>> baseRequest<T>({
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
  }) async {
    // add auth flag to headers if `withAuth` is true
    final Options options = Options(headers: headers, extra: (!withAuth ? TokenType.None : tokenType).asExtra);

    return _client
        .request(
          method,
          endpoint,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress,
          onSendProgress: onSendProgress,
        )
        .mapToResult(serializer, loggerTag);
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
    required T Function(dynamic json) serializer,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool withAuth = true,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    CancelToken? cancelToken,
    TokenType tokenType = TokenType.Bearer,
  }) =>
      baseRequest<BaseResponseModel<T>>(
        method: method,
        endpoint: endpoint,
        serializer: (json) => BaseResponseModel.fromJson<T>(json, serializer),
        data: data,
        queryParameters: queryParameters,
        headers: headers,
        withAuth: withAuth,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
        cancelToken: cancelToken,
        tokenType: tokenType,
      ).then(
        (it) => it.when(
          onLoading: (origin) => Result<T>.loading(origin),
          onError: (origin, error, st) => Result<T>.error(origin, error, st),
          onData: (origin, value) => Result<T>.data(origin, value.data ?? serializer({})),
        ),
      );

  /// Makes an HTTP request to the specified endpoint with the specified method and parameters and return list of items.
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
  Future<Result<List<T>>> listRequest<T>({
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
  }) =>
      baseRequest<BaseListResponseModel<T>>(
        method: method,
        endpoint: endpoint,
        serializer: (json) => BaseListResponseModel.fromJson<T>(json, serializer),
        data: data,
        queryParameters: queryParameters,
        headers: headers,
        withAuth: withAuth,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
        cancelToken: cancelToken,
        tokenType: tokenType,
      ).then(
        (it) => it.when(
          onLoading: (origin) => Result<List<T>>.loading(origin),
          onError: (origin, error, st) => Result<List<T>>.error(origin, error, st),
          onData: (origin, value) => Result<List<T>>.data(origin, value.data!),
        ),
      );

  /// Makes an HTTP request to the specified endpoint with the specified method and parameters and return
  /// paginated response of items.
  ///
  /// Returns a [Future] that completes with the result of the request as a [Result] object.
  ///
  /// The following parameters are available:
  /// [page] : The offset required to be sent.
  /// [pageSize] : The limit required to be sent.
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
  Future<Result<PaginatedModel<T>>> paginatedRequest<T>({
    required PaginatedRequestModel pager,
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
  }) =>
      baseRequest<BaseResponseModel<PaginatedModel<T>>>(
        method: method,
        endpoint: endpoint,
        serializer: (json) => BaseResponseModel.paginatedFromJson<T>(json, serializer),
        data: data,
        queryParameters: {
          ...pager.toJson(),
          ...?queryParameters,
        },
        headers: headers,
        withAuth: withAuth,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
        cancelToken: cancelToken,
        tokenType: tokenType,
      ).then(
        (it) => it.when(
          onLoading: (origin) => Result<PaginatedModel<T>>.loading(origin),
          onError: (origin, error, st) => Result<PaginatedModel<T>>.error(origin, error, st),
          onData: (origin, value) => Result<PaginatedModel<T>>.data(origin, value.data!),
        ),
      );
}

extension ResponseExtensions on Future<Response<dynamic>> {
  Future<Result<R>> mapToResult<R>(R Function(dynamic json) serializer, String loggerTag) => then((it) {
        return Result<R>.data(
          ResultOrigin.network,
          it.data == null
              ? const BaseResponseModel(status: 200, data: true) as R
              : (serializer.call(jsonDecode(it.data)) ?? it.data! as R),
        );
      }).catchError(
        (it, st) {
          Logger.e('$loggerTag RESPONSE: e: $it\nst: $st');
          return Result<R>.error(ResultOrigin.network, it, st);
        },
      );
}
