// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedRequestModelImpl _$$PaginatedRequestModelImplFromJson(Map<String, dynamic> json) =>
    _$PaginatedRequestModelImpl(
      page: json['page'] as int,
      pageSize: json['limit'] as int? ?? AppConstants.paginationPageSize,
    );

Map<String, dynamic> _$$PaginatedRequestModelImplToJson(_$PaginatedRequestModelImpl instance) => <String, dynamic>{
      'page': instance.page,
      'limit': instance.pageSize,
    };
