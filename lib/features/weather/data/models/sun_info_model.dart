import 'dart:convert';

class SunInfoModel {
  final int? id;
  final int? type;
  final int? sunrise;
  final int? sunset;
  final String? country;

  SunInfoModel({
    this.id,
    this.type,
    this.sunrise,
    this.sunset,
    this.country,
  });

  factory SunInfoModel.fromRawJson(String str) => SunInfoModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SunInfoModel.fromJson(Map<String, dynamic> json) => SunInfoModel(
        id: json["id"] == null ? null : json["id"],
        type: json["type"] == null ? null : json["type"],
        sunrise: json["sunrise"] == null ? null : json["sunrise"],
        sunset: json["sunset"] == null ? null : json["sunset"],
        country: json["country"] == null ? null : json["country"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "sunrise": sunrise,
        "sunset": sunset,
        "country": country,
      };
}
