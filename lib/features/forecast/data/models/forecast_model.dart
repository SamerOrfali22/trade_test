import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/features/weather/data/models/clouds_model.dart';
import 'package:weather_app/features/weather/data/models/weather_info_model.dart';
import 'package:weather_app/features/weather/data/models/wind_model.dart';

part 'forecast_model.freezed.dart';
part 'forecast_model.g.dart';

@freezed
class ForecastModel with _$ForecastModel {
  const factory ForecastModel({
    required int dt,
    required WeatherInfoModel main,
    required List<WeatherInfoModel> weather,
    required CloudsModel clouds,
    required WindModel wind,
    required int visibility,
    required double pop,
    required DateTime dtTxt,
  }) = _ForcastModel;

  factory ForecastModel.fromJson(Map<String, dynamic> json) => _$ForecastModelFromJson(json);
}
