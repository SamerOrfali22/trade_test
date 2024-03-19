import 'dart:convert';

class SupplierInfo {
  final String? regCountry;
  final OrderConfig? orderConfig;

  SupplierInfo({
    this.regCountry,
    this.orderConfig,
  });

  factory SupplierInfo.fromRawJson(String str) => SupplierInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SupplierInfo.fromJson(Map<String, dynamic> json) => SupplierInfo(
        regCountry: json["regCountry"] == null ? null : json["regCountry"],
        orderConfig: json["orderConfig"] == null ? null : OrderConfig.fromJson(json["orderConfig"]),
      );

  Map<String, dynamic> toJson() => {
        "regCountry": regCountry,
        "orderConfig": orderConfig?.toJson(),
      };
}

class OrderConfig {
  final double? minAmount;
  final String? currency;

  OrderConfig({
    this.minAmount,
    this.currency,
  });

  factory OrderConfig.fromRawJson(String str) => OrderConfig.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OrderConfig.fromJson(Map<String, dynamic> json) => OrderConfig(
        minAmount: json["minAmount"] == null ? null : json["minAmount"].toDouble(),
        currency: json["currency"] == null ? null : json["currency"],
      );

  Map<String, dynamic> toJson() => {
        "minAmount": minAmount,
        "currency": currency,
      };
}
