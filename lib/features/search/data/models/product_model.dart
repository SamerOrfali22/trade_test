import 'dart:convert';

import 'package:weather_app/features/search/data/models/serarch_prices_model.dart';
import 'package:weather_app/features/search/data/models/supplier_info.dart';

class ProductModel {
  final String? id;
  final String? name;
  final Attributes? attributes;
  final bool? isBestSeller;
  final String? supplierCompanyId;
  final SearchPrices? searchPrices;
  final SearchPrices? searchPricesWithVat;
  final bool? hasVariants;
  final String? categoryId;
  final List<String>? tags;
  final String? sku;
  final String? unit;
  final int? stockQty;
  final String? stockLocation;
  final String? imageUrl;
  final List<String>? categoryIds;
  final List<String>? categorySlugs;
  final CategoryNames? categoryNames;
  final Packaging? packaging;
  final int? minOrderQty;
  final int? vatPercentage;
  final SupplierInfo? supplierInfo;
  final String? objectId;

  ProductModel({
    this.id,
    this.name,
    this.attributes,
    this.isBestSeller,
    this.supplierCompanyId,
    this.searchPrices,
    this.searchPricesWithVat,
    this.hasVariants,
    this.categoryId,
    this.tags,
    this.sku,
    this.unit,
    this.stockQty,
    this.stockLocation,
    this.imageUrl,
    this.categoryIds,
    this.categorySlugs,
    this.categoryNames,
    this.packaging,
    this.minOrderQty,
    this.vatPercentage,
    this.supplierInfo,
    this.objectId,
  });

  factory ProductModel.fromRawJson(String str) => ProductModel.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory ProductModel.fromJson(Map<String?, dynamic> json) => ProductModel(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        attributes: json["attributes"] == null ? null : Attributes.fromJson(json["attributes"]),
        isBestSeller: json["isBestSeller"] == null ? null : json["isBestSeller"],
        supplierCompanyId: json["supplierCompanyId"] == null ? null : json["supplierCompanyId"],
        searchPrices: json["searchPrices"] == null ? null : SearchPrices.fromJson(json["searchPrices"]),
        searchPricesWithVat:
            json["searchPricesWithVat"] == null ? null : SearchPrices.fromJson(json["searchPricesWithVat"]),
        hasVariants: json["hasVariants"] == null ? null : json["hasVariants"],
        categoryId: json["categoryId"] == null ? null : json["categoryId"],
        tags: json["tags"] == null ? null : List<String>.from(json["tags"].map((x) => x)),
        sku: json["sku"] == null ? null : json["sku"],
        unit: json["unit"] == null ? null : json["unit"],
        stockQty: json["stockQty"] == null ? null : json["stockQty"],
        stockLocation: json["stockLocation"] == null ? null : json["stockLocation"],
        imageUrl: json["imageUrl"] == null ? null : json["imageUrl"],
        categoryIds: json["categoryIds"] == null ? null : List<String>.from(json["categoryIds"].map((x) => x)),
        categorySlugs: json["categorySlugs"] == null ? null : List<String>.from(json["categorySlugs"].map((x) => x)),
        categoryNames: json["categoryNames"] == null ? null : CategoryNames.fromJson(json["categoryNames"]),
        packaging: json["packaging"] == null ? null : Packaging.fromJson(json["packaging"]),
        minOrderQty: json["minOrderQty"] == null ? null : json["minOrderQty"],
        vatPercentage: json["vatPercentage"] == null ? null : json["vatPercentage"],
        supplierInfo: json["supplierInfo"] == null ? null : SupplierInfo.fromJson(json["supplierInfo"]),
        objectId: json["objectId"] == null ? null : json["objectID"],
      );

  Map<String?, dynamic> toJson() => {
        "id": id,
        "name": name,
        "attributes": attributes?.toJson(),
        "isBestSeller": isBestSeller,
        "supplierCompanyId": supplierCompanyId,
        "searchPrices": searchPrices?.toJson(),
        "searchPricesWithVat": searchPricesWithVat?.toJson(),
        "hasVariants": hasVariants,
        "categoryId": categoryId,
        "tags": tags == null ? null : List<dynamic>.from(tags!.map((x) => x)),
        "sku": sku,
        "unit": unit,
        "stockQty": stockQty,
        "stockLocation": stockLocation,
        "imageUrl": imageUrl,
        "categoryIds": categoryIds == null ? null : List<dynamic>.from(categoryIds!.map((x) => x)),
        "categorySlugs": categorySlugs == null ? null : List<dynamic>.from(categorySlugs!.map((x) => x)),
        "categoryNames": categoryNames?.toJson(),
        "packaging": packaging?.toJson(),
        "minOrderQty": minOrderQty,
        "vatPercentage": vatPercentage,
        "supplierInfo": supplierInfo?.toJson(),
        "objectID": objectId,
      };
}

class Attributes {
  final Express? express;
  final HasDeals? hasDeals;

  Attributes({
    this.express,
    this.hasDeals,
  });

  factory Attributes.fromRawJson(String str) => Attributes.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory Attributes.fromJson(Map<String?, dynamic> json) => Attributes(
        express: json["express"] == null ? null : Express.fromJson(json["express"]),
        hasDeals: json["hasDeals"] == null ? null : HasDeals.fromJson(json["hasDeals"]),
      );

  Map<String?, dynamic> toJson() => {
        "express": express?.toJson(),
        "hasDeals": hasDeals?.toJson(),
      };
}

class Express {
  final bool? code;
  final bool? value;

  Express({
    this.code,
    this.value,
  });

  factory Express.fromRawJson(String str) => Express.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory Express.fromJson(Map<String?, dynamic> json) => Express(
        code: json["code"] == null ? null : json["code"],
        value: json["value"] == null ? null : json["value"],
      );

  Map<String?, dynamic> toJson() => {
        "code": code,
        "value": value,
      };
}

class HasDeals {
  final List<String>? code;
  final List<String>? value;

  HasDeals({
    this.code,
    this.value,
  });

  factory HasDeals.fromRawJson(String str) => HasDeals.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory HasDeals.fromJson(Map<String?, dynamic> json) => HasDeals(
        code: json["code"] == null ? null : List<String>.from(json["code"].map((x) => x)),
        value: json["value"] == null ? null : List<String>.from(json["value"].map((x) => x)),
      );

  Map<String?, dynamic> toJson() => {
        "code": code == null ? null : List<dynamic>.from(code!.map((x) => x)),
        "value": value == null ? null : List<dynamic>.from(value!.map((x) => x)),
      };
}

class CategoryNames {
  final String? l1;
  final String? l2;
  final String? l3;
  final String? l4;

  CategoryNames({
    this.l1,
    this.l2,
    this.l3,
    this.l4,
  });

  factory CategoryNames.fromRawJson(String str) => CategoryNames.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory CategoryNames.fromJson(Map<String?, dynamic> json) => CategoryNames(
        l1: json["l1"] == null ? null : json["l1"],
        l2: json["l2"] == null ? null : json["l2"],
        l3: json["l3"] == null ? null : json["l3"],
        l4: json["l4"] == null ? null : json["l4"],
      );

  Map<String?, dynamic> toJson() => {
        "l1": l1,
        "l2": l2,
        "l3": l3,
        "l4": l4,
      };
}

class Packaging {
  final String? size;
  final String? unit;
  final String? unitsPerCarton;

  Packaging({
    this.size,
    this.unit,
    this.unitsPerCarton,
  });

  factory Packaging.fromRawJson(String str) => Packaging.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory Packaging.fromJson(Map<String?, dynamic> json) => Packaging(
        size: json["size"] == null ? null : json["size"],
        unit: json["unit"] == null ? null : json["unit"],
        unitsPerCarton: json["unitsPerCarton"] == null ? null : json["unitsPerCarton"],
      );

  Map<String?, dynamic> toJson() => {
        "size": size,
        "unit": unit,
        "unitsPerCarton": unitsPerCarton,
      };
}
