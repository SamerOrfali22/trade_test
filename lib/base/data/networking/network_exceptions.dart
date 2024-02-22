import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/base/domain/entities/app_exception.dart';
import 'package:weather_app/base/utils/resources/resources.dart';

part 'network_exceptions.freezed.dart';
part 'network_exceptions.g.dart';

abstract class TranslatableException implements Exception {
  String getErrorMessage();
}

@freezed
class NetworkException with _$NetworkException {
  // Exception for unauthorized requests
  @Implements<TranslatableException>()
  const factory NetworkException.unauthorizedRequest(body) = UnauthorizedRequest;

  /// Exception for bad requests
  @Implements<TranslatableException>()
  const factory NetworkException.badRequest() = BadRequest;

  /// Exception for requests that did not find a match
  @Implements<TranslatableException>()
  const factory NetworkException.notFound(String reason) = NotFound;

  /// Exception for requests with a method that is not allowed
  @Implements<TranslatableException>()
  const factory NetworkException.methodNotAllowed() = MethodNotAllowed;

  /// Exception for requests that are not acceptable
  @Implements<TranslatableException>()
  const factory NetworkException.notAcceptable() = NotAcceptable;

  /// Exception for requests that caused a conflict
  @Implements<TranslatableException>()
  const factory NetworkException.conflict() = Conflict;

  /// Exception for requests that resulted in an internal server error
  @Implements<TranslatableException>()
  const factory NetworkException.internalServerError() = InternalServerError;

  /// Exception for requests with a method that is not implemented
  @Implements<TranslatableException>()
  const factory NetworkException.notImplemented() = NotImplemented;

  /// Exception for requests that resulted in a service unavailable error
  @Implements<TranslatableException>()
  const factory NetworkException.serviceUnavailable() = ServiceUnavailable;

  /// Exception for requests that failed due to no internet connection
  @Implements<TranslatableException>()
  const factory NetworkException.noInternetConnection() = NoInternetConnection;

  /// Exception for requests that resulted in a format exception
  @Implements<TranslatableException>()
  const factory NetworkException.formatException() = NetworkFormatException;

  /// Exception for requests that could not be processed
  @Implements<TranslatableException>()
  const factory NetworkException.unableToProcess() = UnableToProcess;

  /// Exception for unexpected errors
  @Implements<TranslatableException>()
  const factory NetworkException.unexpectedError() = UnexpectedError;

  /// Exception for default errors
  @Implements<TranslatableException>()
  const factory NetworkException.defaultError(int? code, String? error) = DefaultError;

  const NetworkException._();

  factory NetworkException.fromJson(Map<String, dynamic> json) => _$NetworkExceptionFromJson(json);

  /// Returns a message for a given [NetworkException]
  String getErrorMessage() => when(
        notImplemented: () => 'Not Implemented',
        internalServerError: () => Resources.localizations.general_error,
        notFound: (String reason) => reason,
        serviceUnavailable: () => 'Service unavailable',
        methodNotAllowed: () => 'Method Allowed',
        badRequest: () => 'Bad request',
        unauthorizedRequest: (body) => 'Unauthorized request - $body',
        unexpectedError: () => 'Unexpected error occurred',
        noInternetConnection: () => Resources.localizations.no_internet_connection,
        conflict: () => 'Error due to a conflict',
        unableToProcess: () => 'Unable to process the data',
        defaultError: (int? code, String? error) => error ?? 'Unexpected error occurred',
        formatException: () => 'Unexpected error occurred',
        notAcceptable: () => 'Not acceptable',
      );

  /// Returns a [NetworkException] based on the HTTP status code and response body of a request
  ///
  /// [statusCode] is the HTTP status code of the response
  /// [body] is the response body of the request
  static TranslatableException handleDioBadResponseException(
    int? statusCode,
    dynamic body,
  ) {
    dynamic safeDecodeBody() => body is Map<String, dynamic> ? body : jsonDecode(body);

    switch (statusCode) {
      case 409:
        return AppExceptionModel.conflict(
          status: 409,
          message: safeDecodeBody()['message'] as String? ?? 'conflict',
        ) as TranslatableException;
      case 408:
        return const NoInternetConnection();
      case 500:
        return const InternalServerError();
      case 503:
        return const ServiceUnavailable();

      default:
        try {
          final decodedBody = safeDecodeBody();
          return const BaseErrorResponseModelConverter().fromJson(decodedBody) as TranslatableException;
        } catch (ex) {
          return DefaultError(statusCode, 'Received invalid status code. body: $body');
        }
    }
  }
}
