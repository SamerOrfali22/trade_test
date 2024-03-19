import 'package:weather_app/features/search/data/models/filter_model.dart';
import 'package:weather_app/features/search/data/models/product_model.dart';

class SearchResponseModel {
  final List<String>? sort;
  final List<ProductModel> products;
  final List<FilterModel>? filters;
  final SelectedFilters? selectedFilters;
  final String? selectedSorting;
  final int totalRecords;

  SearchResponseModel({
    this.sort,
    required this.products,
    required this.totalRecords,
    this.filters,
    this.selectedFilters,
    this.selectedSorting,
  });

  factory SearchResponseModel.fromJson(Map<String, dynamic> json, int totalRecords) => SearchResponseModel(
        totalRecords: totalRecords,
        sort: json["sort"] == null ? null : List<String>.from(json["sort"].map((x) => x)),
        products: json["products"] == null
            ? []
            : List<ProductModel>.from(json["products"].map((x) => ProductModel.fromJson(x))),
        filters: json["filters"] == null
            ? null
            : List<FilterModel>.from(json["filters"].map((x) => FilterModel.fromJson(x))),
        selectedFilters: json["selectedFilters"] == null ? null : SelectedFilters.fromJson(json["selectedFilters"]),
        selectedSorting: json["selectedSorting"] == null ? null : json["selectedSorting"],
      );

  Map<String, dynamic> toJson() => {
        "sort": sort == null ? null : List<dynamic>.from(sort!.map((x) => x)),
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
        "filters": filters == null ? null : List<dynamic>.from(filters!.map((x) => x.toJson())),
        "selectedFilters": selectedFilters?.toJson(),
        "selectedSorting": selectedSorting,
      };
}
