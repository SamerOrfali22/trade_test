// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedModel<T> _$PaginatedModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PaginatedModel<T>(
      data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
      limit: json['limit'] as int?,
      offset: json['offset'] as int?,
      page: json['page'] as int?,
      totalPages: json['totalPages'] as int?,
      totalRows: json['totalRows'] as int?,
    );

Map<String, dynamic> _$PaginatedModelToJson<T>(
  PaginatedModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data?.map(toJsonT).toList(),
      'limit': instance.limit,
      'offset': instance.offset,
      'page': instance.page,
      'totalPages': instance.totalPages,
      'totalRows': instance.totalRows,
    };
