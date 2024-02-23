// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherResponseModelImpl _$$WeatherResponseModelImplFromJson(Map<String, dynamic> json) => _$WeatherResponseModelImpl(
      coord: json['coord'] == null ? null : CoordModel.fromJson(json['coord'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
              ?.map((e) => WeatherConditionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      base: json['base'] as String?,
      main: json['main'] == null ? null : WeatherInfoModel.fromJson(json['main'] as Map<String, dynamic>),
      visibility: json['visibility'] as int?,
      wind: json['wind'] == null ? null : WindModel.fromJson(json['wind'] as Map<String, dynamic>),
      clouds: json['clouds'] == null ? null : CloudsModel.fromJson(json['clouds'] as Map<String, dynamic>),
      dt: json['dt'] as int?,
      sys: json['sys'] == null ? null : SunInfoModel.fromJson(json['sys'] as Map<String, dynamic>),
      timezone: json['timezone'] as int?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      cod: json['cod'] as int?,
    );

Map<String, dynamic> _$$WeatherResponseModelImplToJson(_$WeatherResponseModelImpl instance) => <String, dynamic>{
      'coord': instance.coord,
      'weather': instance.weather,
      'base': instance.base,
      'main': instance.main,
      'visibility': instance.visibility,
      'wind': instance.wind,
      'clouds': instance.clouds,
      'dt': instance.dt,
      'sys': instance.sys,
      'timezone': instance.timezone,
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod,
    };
