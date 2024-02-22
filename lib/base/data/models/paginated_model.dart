import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paginated_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class PaginatedModel<T> extends Equatable {
  const PaginatedModel({
    this.data,
    this.limit,
    this.offset,
    this.page,
    this.totalPages,
    this.totalRows,
  });

  final List<T>? data;
  final int? limit;
  final int? offset;
  final int? page;
  final int? totalPages;
  final int? totalRows;

  PaginatedModel<T> copyWith({
    List<T>? data,
    int? limit,
    int? offset,
    int? page,
    int? totalPages,
    int? totalRows,
  }) {
    return PaginatedModel<T>(
      data: data ?? this.data,
      limit: limit ?? this.limit,
      offset: offset ?? this.offset,
      page: page ?? this.page,
      totalPages: totalPages ?? this.totalPages,
      totalRows: totalRows ?? this.totalRows,
    );
  }

  @override
  List<Object?> get props {
    return [
      data,
      limit,
      offset,
      page,
      totalPages,
      totalRows,
    ];
  }

  static PaginatedModel<T> fromJson<T>(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$PaginatedModelFromJson<T>(json, fromJsonT);

  PaginatedModel<R> mapData<R>(R Function(T) mapper) => PaginatedModel<R>(
        data: (data ?? []).map(mapper).toList(),
        limit: limit,
        offset: offset,
        page: page,
        totalPages: totalPages,
        totalRows: totalRows,
      );
}
