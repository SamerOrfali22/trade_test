import 'dart:core';

import 'package:dio/dio.dart';

/// An enumeration of HTTP methods.
enum HttpMethod {
  GET,
  POST,
  PUT,
  PATCH,
  DELETE,
}

/// An abstract class that represents a client for making HTTP requests.
abstract class HttpClient {
  ///  Makes an HTTP request to the specified endpoint with the specified method and parameters.
  ///
  /// [uri] is the URI to send the request to.
  /// [method] : The HTTP method to use for the request (e.g. GET, POST, DELETE).
  /// [data] is the data to include in the request body.
  /// [queryParameters] are the query parameters to include in the request.
  /// [options] are the options to use for the request.
  /// [cancelToken] is the cancel token to use for the request.
  /// [onSendProgress] is a callback for sending progress events for the request.
  /// [onReceiveProgress] is a callback for receiving progress events for the
  /// request.
  ///
  /// Returns a `Future` that completes with the response to the request.
  Future<Response> request(
    HttpMethod method,
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  });
}

extension ResponseExtensions<T> on Response<T> {
  /// Returns `true` if the response has a status code of 200 (OK).
  ///
  /// Returns `false` otherwise.
  bool get isSuccess => statusCode == 200;
}
