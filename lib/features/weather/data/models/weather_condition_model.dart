import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:weather_app/features/weather/domain/enums/main_weather_enum.dart';

class WeatherConditionModel {
  final int? id;
  final MainWeatherEnum main;
  final String? description;
  final String? icon;

  WeatherConditionModel({
    this.id,
    required this.main,
    this.description,
    this.icon,
  });

  factory WeatherConditionModel.fromRawJson(String str) => WeatherConditionModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WeatherConditionModel.fromJson(Map<String, dynamic> json) => WeatherConditionModel(
        id: json["id"] == null ? null : json["id"],
        main: json["main"] == null
            ? MainWeatherEnum.Clear
            : MainWeatherEnum.values.firstWhereIndexedOrNull((index, element) => element.name == json["main"]) ??
                MainWeatherEnum.Clear,
        description: json["description"] == null ? null : json["description"],
        icon: json["icon"] == null ? null : json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "main": main,
        "description": description,
        "icon": icon,
      };
}
