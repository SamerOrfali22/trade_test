// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForcastModelImpl _$$ForcastModelImplFromJson(Map<String, dynamic> json) => _$ForcastModelImpl(
      dt: json['dt'] as int,
      main: WeatherInfoModel.fromJson(json['main'] as Map<String, dynamic>),
      weather:
          (json['weather'] as List<dynamic>).map((e) => WeatherInfoModel.fromJson(e as Map<String, dynamic>)).toList(),
      clouds: CloudsModel.fromJson(json['clouds'] as Map<String, dynamic>),
      wind: WindModel.fromJson(json['wind'] as Map<String, dynamic>),
      visibility: json['visibility'] as int,
      pop: (json['pop'] as num).toDouble(),
      dtTxt: DateTime.parse(json['dtTxt'] as String),
    );

Map<String, dynamic> _$$ForcastModelImplToJson(_$ForcastModelImpl instance) => <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main,
      'weather': instance.weather,
      'clouds': instance.clouds,
      'wind': instance.wind,
      'visibility': instance.visibility,
      'pop': instance.pop,
      'dtTxt': instance.dtTxt.toIso8601String(),
    };
