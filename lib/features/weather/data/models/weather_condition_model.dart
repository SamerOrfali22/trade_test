import 'dart:convert';

class WeatherConditionModel {
  final int id;
  final String main;
  final String description;
  final String icon;

  WeatherConditionModel({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  factory WeatherConditionModel.fromRawJson(String str) => WeatherConditionModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WeatherConditionModel.fromJson(Map<String, dynamic> json) => WeatherConditionModel(
        id: json["id"],
        main: json["main"],
        description: json["description"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "main": main,
        "description": description,
        "icon": icon,
      };
}
