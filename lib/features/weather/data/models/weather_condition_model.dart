import 'dart:convert';

class WeatherConditionModel {
  final int? id;
  final String? main;
  final String? description;
  final String? icon;

  WeatherConditionModel({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  factory WeatherConditionModel.fromRawJson(String str) => WeatherConditionModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WeatherConditionModel.fromJson(Map<String, dynamic> json) => WeatherConditionModel(
        id: json["id"] == null ? null : json["id"],
        main: json["main"] == null ? null : json["main"],
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
