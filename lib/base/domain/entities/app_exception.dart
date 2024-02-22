import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/base/data/networking/network_exceptions.dart';

part 'app_exception.freezed.dart';
part 'app_exception.g.dart';

@freezed
class AppExceptionModel with _$AppExceptionModel {
  @Implements<TranslatableException>()
  factory AppExceptionModel.general({required int status, required String message}) = AppGeneralException;

  @Implements<TranslatableException>()
  factory AppExceptionModel.conflict({required int status, required String message}) = AppConflictException;

  const AppExceptionModel._();

  factory AppExceptionModel.fromJson(Map<String, dynamic> json) => _$AppExceptionModelFromJson(json);

  /// Returns a message for a given [NetworkException]
  String getErrorMessage() {
    return when(
      general: (_, message) => message,
      conflict: (_, message) => message,
    );
  }
}

class BaseErrorResponseModelConverter implements JsonConverter<AppExceptionModel, Map<String, dynamic>> {
  const BaseErrorResponseModelConverter();

  @override
  AppExceptionModel fromJson(Map<String, dynamic> json) {
    if (json['runtimeType'] != null) {
      return AppExceptionModel.fromJson(json);
    }

    return AppExceptionModel.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(AppExceptionModel data) => data.toJson();
}
