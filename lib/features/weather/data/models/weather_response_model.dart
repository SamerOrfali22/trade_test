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
    CoordModel? coord,
    @JsonKey(defaultValue: []) List<WeatherConditionModel>? weather,
    String? base,
    WeatherInfoModel? main,
    int? visibility,
    WindModel? wind,
    CloudsModel? clouds,
    int? dt,
    SunInfoModel? sys,
    int? timezone,
    int? id,
    String? name,
    int? cod,
  }) = _WeatherResponseModel;

  factory WeatherResponseModel.fromJson(Map<String, dynamic> json) => _$WeatherResponseModelFromJson(json);
}
