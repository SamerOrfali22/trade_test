// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastResponseModelImpl _$$ForecastResponseModelImplFromJson(Map<String, dynamic> json) =>
    _$ForecastResponseModelImpl(
      cod: json['cod'] as String,
      message: json['message'] as int,
      cnt: json['cnt'] as int,
      list: (json['list'] as List<dynamic>).map((e) => ForecastModel.fromJson(e as Map<String, dynamic>)).toList(),
      city: CityModel.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForecastResponseModelImplToJson(_$ForecastResponseModelImpl instance) => <String, dynamic>{
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'list': instance.list,
      'city': instance.city,
    };
