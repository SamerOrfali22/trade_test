import 'dart:convert';

class SearchPrices {
  final double? minPriceAed;
  final double? maxPriceAed;
  final double? retailPriceAed;

  SearchPrices({
    this.minPriceAed,
    this.maxPriceAed,
    this.retailPriceAed,
  });

  factory SearchPrices.fromRawJson(String str) => SearchPrices.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchPrices.fromJson(Map<String, dynamic> json) => SearchPrices(
        minPriceAed: json["minPriceAED"] == null ? null : json["minPriceAED"].toDouble(),
        maxPriceAed: json["maxPriceAED"] == null ? null : json["maxPriceAED"].toDouble(),
        retailPriceAed: json["retailPriceAED"] == null ? null : json["retailPriceAED"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "minPriceAED": minPriceAed,
        "maxPriceAED": maxPriceAed,
        "retailPriceAED": retailPriceAed,
      };
}
