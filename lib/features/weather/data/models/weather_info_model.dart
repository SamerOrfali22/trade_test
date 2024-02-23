import 'dart:convert';

class WeatherInfoModel {
  final double? temp;
  final double? feelsLike;
  final double? tempMin;
  final double? tempMax;
  final int? pressure;
  final int? humidity;

  WeatherInfoModel({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
  });

  factory WeatherInfoModel.fromRawJson(String str) => WeatherInfoModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WeatherInfoModel.fromJson(Map<String, dynamic> json) => WeatherInfoModel(
        temp: json["temp"] == null ? null : json["temp"].toDouble(),
        feelsLike: json["feels_like"] == null ? null : json["feels_like"].toDouble(),
        tempMin: json["temp_min"] == null ? null : json["temp_min"].toDouble(),
        tempMax: json["temp_max"] == null ? null : json["temp_max"].toDouble(),
        pressure: json["pressure"] == null ? null : json["pressure"],
        humidity: json["humidity"] == null ? null : json["humidity"],
      );

  Map<String, dynamic> toJson() => {
        "temp": temp,
        "feels_like": feelsLike,
        "temp_min    ": tempMin,
        "temp_max": tempMax,
        "pressure": pressure,
        "humidity": humidity,
      };
}
