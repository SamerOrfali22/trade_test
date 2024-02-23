import 'dart:convert';

class CoordModel {
  final double? lon;
  final double? lat;

  CoordModel({
    this.lon,
    this.lat,
  });

  factory CoordModel.fromRawJson(String str) => CoordModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CoordModel.fromJson(Map<String, dynamic> json) => CoordModel(
        lon: json["lon"] == null ? null : json["lon"].toDouble(),
        lat: json["lat"] == null ? null : json["lat"].toDouble(),
      );

  Map<String, dynamic> toJson() => {"lon": lon, "lat": lat};
}
