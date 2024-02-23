import 'dart:convert';

import 'package:weather_app/features/weather/data/models/coord_model.dart';

class CityModel {
  final int? id;
  final String? name;
  final CoordModel? coord;
  final String? country;
  final int? population;
  final int? timezone;
  final int? sunrise;
  final int? sunset;

  CityModel({
    required this.id,
    required this.name,
    required this.coord,
    required this.country,
    required this.population,
    required this.timezone,
    required this.sunrise,
    required this.sunset,
  });

  factory CityModel.fromRawJson(String str) => CityModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CityModel.fromJson(Map<String, dynamic> json) => CityModel(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        coord: json["coord"] == null ? null : CoordModel.fromJson(json["coord"]),
        country: json["country"] == null ? null : json["country"],
        population: json["population"] == null ? null : json["population"],
        timezone: json["timezone"] == null ? null : json["timezone"],
        sunrise: json["sunrise"] == null ? null : json["sunrise"],
        sunset: json["sunset"] == null ? null : json["sunset"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "coord": coord?.toJson(),
        "country": country,
        "population": population,
        "timezone": timezone,
        "sunrise": sunrise,
        "sunset": sunset,
      };
}
