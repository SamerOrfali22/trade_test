import 'dart:convert';

class WindModel {
  final double speed;
  final int deg;

  WindModel({
    required this.speed,
    required this.deg,
  });

  factory WindModel.fromRawJson(String str) => WindModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WindModel.fromJson(Map<String, dynamic> json) => WindModel(
        speed: json["speed"].toDouble(),
        deg: json["deg"],
      );

  Map<String, dynamic> toJson() => {
        "speed": speed,
        "deg": deg,
      };
}
