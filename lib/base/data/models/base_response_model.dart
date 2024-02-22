import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/base/data/models/paginated_model.dart';

part 'base_response_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponseModel<T> extends Equatable {
  const BaseResponseModel({
    this.status,
    this.message,
    this.data,
    this.errors,
  });

  final int? status;
  final String? message;
  final T? data;
  final Map<String, dynamic>? errors;

  BaseResponseModel<T> copyWith({
    int? status,
    String? message,
    T? data,
    Map<String, dynamic>? errors,
  }) {
    return BaseResponseModel<T>(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      errors: errors ?? this.errors,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      status,
      message,
      data,
      errors,
    ];
  }

  static BaseResponseModel<T> fromJson<T>(
    Map<String, dynamic> json,
    T Function(dynamic json) fromJsonT,
  ) =>
      _$BaseResponseModelFromJson<T>(json, fromJsonT);

  static BaseResponseModel<PaginatedModel<T>> paginatedFromJson<T>(
    Map<String, dynamic> json,
    T Function(dynamic json) fromJsonT,
  ) =>
      BaseResponseModel.fromJson<PaginatedModel<T>>(
        json,
        (paginatedDataJson) => PaginatedModel.fromJson<T>(
          paginatedDataJson as Map<String, dynamic>,
          fromJsonT,
        ),
      );
}
