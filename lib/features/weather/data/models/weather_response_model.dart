import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/features/weather/data/models/clouds_model.dart';
import 'package:weather_app/features/weather/data/models/coord_model.dart';
import 'package:weather_app/features/weather/data/models/sun_info_model.dart';
import 'package:weather_app/features/weather/data/models/weather_condition_model.dart';
import 'package:weather_app/features/weather/data/models/weather_info_model.dart';
import 'package:weather_app/features/weather/data/models/wind_model.dart';

part 'weather_response_model.freezed.dart';
part 'weather_response_model.g.dart';

@freezed
class WeatherResponseModel with _$WeatherResponseModel {
  const factory WeatherResponseModel({
    required CoordModel coord,
    required List<WeatherConditionModel> weather,
    required String base,
    required WeatherInfoModel main,
    required int visibility,
    required WindModel wind,
    required CloudsModel clouds,
    required int dt,
    required SunInfoModel sys,
    required int timezone,
    required int id,
    required String name,
    required int cod,
  }) = _WeatherResponseModel;

  factory WeatherResponseModel.fromJson(Map<String, dynamic> json) => _$WeatherResponseModelFromJson(json);
}
