import 'dart:convert';

class CoordModel {
  final double lon;
  final double lan;

  CoordModel({
    required this.lon,
    required this.lan,
  });

  factory CoordModel.fromRawJson(String str) => CoordModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CoordModel.fromJson(Map<String, dynamic> json) => CoordModel(
        lon: json["lon"].toDouble(),
        lan: json["lan"].toDouble(),
      );

  Map<String, dynamic> toJson() => {"lon": lon, "lan": lan};
}
