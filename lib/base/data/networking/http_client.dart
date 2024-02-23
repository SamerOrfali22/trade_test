// ignore_for_file: constant_identifier_names

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

enum HttpContent {
  Form('application/x-www-form-urlencoded'),
  Json('application/json'),
  Patch('application/merge-patch+json'),
  ;

  const HttpContent(this.value);

  final String value;
}

/// An abstract class that represents a client for making HTTP requests.
abstract class HttpClient {
  Future<Response> request(
    String uri, {
    required HttpMethod method,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    String? baseUrl,
  });
}

extension ResponseExtensions<T> on Response<T> {
  /// Returns `true` if the response has a status code of 200 (OK).
  ///
  /// Returns `false` otherwise.
  bool get isSuccess => statusCode == 200 || statusCode == 201 || statusCode == 204;
}
