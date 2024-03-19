import 'package:dart_kit/dart_kit.dart';
import 'package:weather_app/features/search/data/models/search_response_model.dart';

abstract class SearchRepository {
  Future<Result<SearchResponseModel>> search({
    required String keyword,
    required String sort,
    required Map<String, dynamic> filters,
  });
}
