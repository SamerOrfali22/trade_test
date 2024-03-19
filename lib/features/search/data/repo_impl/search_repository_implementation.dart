import 'package:dart_kit/src/models/result.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/features/search/data/models/search_response_model.dart';
import 'package:weather_app/features/search/data/sources/search_remote_source.dart';
import 'package:weather_app/features/search/domain/repository/search_repository.dart';

@LazySingleton(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  SearchRepositoryImpl(this._searchRemoteSource);

  final SearchRemoteSource _searchRemoteSource;

  @override
  Future<Result<SearchResponseModel>> search({
    required String keyword,
    required String sort,
    required Map<String, dynamic> filters,
  }) =>
      _searchRemoteSource.search(keyword: keyword, filters: filters, sort: sort);
}
