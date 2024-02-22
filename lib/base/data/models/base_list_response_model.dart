import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_list_response_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseListResponseModel<T> extends Equatable {
  const BaseListResponseModel({
    this.status,
    this.message,
    this.data,
    this.errors,
  });

  final int? status;
  final String? message;
  final List<T>? data;
  final Map<String, dynamic>? errors;

  BaseListResponseModel<T> copyWith({
    int? status,
    String? message,
    List<T>? data,
    Map<String, dynamic>? errors,
  }) {
    return BaseListResponseModel<T>(
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

  static BaseListResponseModel<T> fromJson<T>(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BaseListResponseModelFromJson<T>(json, fromJsonT);
}
