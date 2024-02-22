import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/base/utils/app_constants.dart';

part 'paginated_request_model.freezed.dart';
part 'paginated_request_model.g.dart';

@freezed
class PaginatedRequestModel with _$PaginatedRequestModel {
  factory PaginatedRequestModel({
    required int page,
    @JsonKey(name: 'limit') @Default(AppConstants.paginationPageSize) int pageSize,
  }) = _PaginatedRequestModel;

  factory PaginatedRequestModel.fromJson(Map<String, dynamic> json) => _$PaginatedRequestModelFromJson(json);
}
