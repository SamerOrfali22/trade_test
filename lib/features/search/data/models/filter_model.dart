import 'dart:convert';

import 'package:weather_app/features/search/data/models/filter_data_model.dart';

class FilterModel {
  final String? code;
  final String? type;
  final String? name;
  final int? sort;
  final List<FilterDataModel>? data;

  FilterModel({
    this.code,
    this.type,
    this.name,
    this.sort,
    this.data,
  });

  factory FilterModel.fromRawJson(String str) => FilterModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FilterModel.fromJson(Map<String, dynamic> json) => FilterModel(
        code: json["code"] == null ? null : json["code"],
        type: json["type"] == null ? null : json["type"],
        name: json["name"] == null ? null : json["name"],
        sort: json["sort"] == null ? null : json["sort"],
        data: json["data"] == null
            ? null
            : List<FilterDataModel>.from(json["data"].map((x) => FilterDataModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "type": type,
        "name": name,
        "sort": sort,
        "data": data == null ? null : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class SelectedFilters {
  SelectedFilters();

  factory SelectedFilters.fromRawJson(String str) => SelectedFilters.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SelectedFilters.fromJson(Map<String, dynamic> json) => SelectedFilters();

  Map<String, dynamic> toJson() => {};
}
