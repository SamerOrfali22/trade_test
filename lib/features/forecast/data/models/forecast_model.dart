import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/features/weather/data/models/clouds_model.dart';
import 'package:weather_app/features/weather/data/models/weather_info_model.dart';
import 'package:weather_app/features/weather/data/models/wind_model.dart';

part 'forecast_model.freezed.dart';
part 'forecast_model.g.dart';

@freezed
class ForecastModel with _$ForecastModel {
  const factory ForecastModel({
    int? dt,
    WeatherInfoModel? main,
    @JsonKey(defaultValue: []) List<WeatherInfoModel>? weather,
    CloudsModel? clouds,
    WindModel? wind,
    int? visibility,
    double? pop,
    DateTime? dtTxt,
  }) = _ForcastModel;

  factory ForecastModel.fromJson(Map<String, dynamic> json) => _$ForecastModelFromJson(json);
}
