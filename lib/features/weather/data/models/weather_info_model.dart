import 'dart:convert';

class WeatherInfoModel {
  final double temp;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int pressure;
  final int humidity;

  WeatherInfoModel({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
  });

  factory WeatherInfoModel.fromRawJson(String str) => WeatherInfoModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WeatherInfoModel.fromJson(Map<String, dynamic> json) => WeatherInfoModel(
        temp: json["temp"].toDouble(),
        feelsLike: json["feelsLike"].toDouble(),
        tempMin: json["tempMin    "].toDouble(),
        tempMax: json["tempMax"].toDouble(),
        pressure: json["pressure"],
        humidity: json["humidity"],
      );

  Map<String, dynamic> toJson() => {
        "temp": temp,
        "feelsLike": feelsLike,
        "tempMin    ": tempMin,
        "tempMax": tempMax,
        "pressure": pressure,
        "humidity": humidity,
      };
}
