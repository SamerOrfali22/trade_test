import 'package:json_annotation/json_annotation.dart';

part 'pagination_model.g.dart';

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class PaginationModel<T> {
  @JsonKey(name: 'totalPages')
  final int totalPages;
  @JsonKey(name: 'pageSize')
  final int pageSize;
  @JsonKey(name: 'queryId')
  final String? queryId;
  @JsonKey(defaultValue: 1, name: 'currentPage')
  final int currentPage;
  @JsonKey(defaultValue: 0, name: 'data')
  final List<T> data;

  PaginationModel({
    required this.currentPage,
    required this.totalPages,
    required this.pageSize,
    required this.queryId,
    required this.data,
  });

  factory PaginationModel.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic json) fromJsonT,
  ) =>
      _$PaginationModelFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) => _$PaginationModelToJson(this, toJsonT);
}
