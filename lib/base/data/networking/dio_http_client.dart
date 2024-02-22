import 'dart:io';

import 'package:dio/dio.dart';
import 'package:weather_app/base/data/networking/http_client.dart';
import 'package:weather_app/base/data/networking/network_exceptions.dart';

/// dio client for making HTTP requests.
class DioHttpClient implements HttpClient {
  const DioHttpClient(this._dio);

  final Dio _dio;

  @override
  Future<Response> request(
    HttpMethod method,
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) =>
      _processNetworkCall(
        () => _dio.request(
          uri,
          data: data,
          queryParameters: queryParameters,
          options: (options ?? Options()).copyWith(method: method.name),
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress,
          onSendProgress: onSendProgress,
        ),
      );

  /// Processes a network call and catches any errors that occur
  ///
  /// [call] is a function that returns a [Future] of type [Response].
  Future<Response> _processNetworkCall(Future<Response> Function() call) =>
      call().catchError((e) => throw DioHttpClient.getDioException(e));

  /// Returns a [NetworkException] based on the error that occurred during a network call
  ///
  /// [error] is an error that occurred during a network call
  static TranslatableException getDioException(error) {
    if (error is Exception) {
      try {
        if (error is DioException) {
          switch (error.type) {
            case DioExceptionType.cancel:
            case DioExceptionType.connectionTimeout:
            case DioExceptionType.sendTimeout:
            case DioExceptionType.receiveTimeout:
            case DioExceptionType.unknown:
            case DioExceptionType.connectionError:
              return const NetworkException.noInternetConnection() as TranslatableException;
            case DioExceptionType.badCertificate:
            case DioExceptionType.badResponse:
              return NetworkException.handleDioBadResponseException(
                error.response?.statusCode,
                error.response?.data,
              );
          }
        } else if (error is SocketException) {
          return const NetworkException.noInternetConnection() as TranslatableException;
        } else {
          return const NetworkException.unexpectedError() as TranslatableException;
        }
      } on FormatException catch (_) {
        return const NetworkException.formatException() as TranslatableException;
      } catch (_) {
        return const NetworkException.unexpectedError() as TranslatableException;
      }
    } else {
      return error.toString().contains('is not a subtype of')
          ? const NetworkException.unableToProcess() as TranslatableException
          : const NetworkException.unexpectedError() as TranslatableException;
    }
  }
}
