import 'dart:convert';

class FilterDataModel {
  final int? count;
  final String? name;
  final bool? selected;
  final String? min;
  final String? max;
  final double? globalMax;
  final double? globalMin;

  FilterDataModel({
    this.count,
    this.name,
    this.selected,
    this.min,
    this.max,
    this.globalMax,
    this.globalMin,
  });

  factory FilterDataModel.fromRawJson(String str) => FilterDataModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FilterDataModel.fromJson(Map<String, dynamic> json) => FilterDataModel(
        count: json["count"] == null ? null : json["count"],
        name: json["name"] == null ? null : json["name"],
        selected: json["selected"] == null ? null : json["selected"],
        min: json["min"] == null ? null : json["min"],
        max: json["max"] == null ? null : json["max"],
        globalMax: json["globalMax"] == null ? null : json["globalMax"].toDouble(),
        globalMin: json["globalMin"] == null ? null : json["globalMin"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "name": name,
        "selected": selected,
        "min": min,
        "max": max,
        "globalMax": globalMax,
        "globalMin": globalMin,
      };
}
