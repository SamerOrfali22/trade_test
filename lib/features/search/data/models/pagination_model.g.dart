// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginationModel<T> _$PaginationModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PaginationModel<T>(
      currentPage: json['currentPage'] as int? ?? 1,
      totalPages: json['totalPages'] as int,
      pageSize: json['pageSize'] as int,
      queryId: json['queryId'] as String?,
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$PaginationModelToJson<T>(
  PaginationModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'queryId': instance.queryId,
      'currentPage': instance.currentPage,
      'data': instance.data.map(toJsonT).toList(),
    };
