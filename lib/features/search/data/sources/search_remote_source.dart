import 'package:dart_kit/dart_kit.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/base/data/networking/end_points.dart';
import 'package:weather_app/base/data/networking/http_client.dart';
import 'package:weather_app/base/data/sources/base_remote_source.dart';
import 'package:weather_app/features/search/data/models/search_response_model.dart';

abstract class SearchRemoteSource {
  Future<Result<SearchResponseModel>> search({
    required String keyword,
    required String sort,
    required Map<String, dynamic> filters,
  });
}

@LazySingleton(as: SearchRemoteSource)
class SearchRemoteSourceImpl extends BaseRemoteSource implements SearchRemoteSource {
  SearchRemoteSourceImpl(super.client);

  @override
  String get loggerTag => 'SearchRemoteSource';

  @override
  Future<Result<SearchResponseModel>> search({
    required String keyword,
    required String sort,
    required Map<String, dynamic> filters,
  }) =>
      request(
          method: HttpMethod.POST,
          endpoint: EndPoints.search,
          serializer: (json) => SearchResponseModel.fromJson(json['data'], json['totalRecords']),
          contentType: HttpContent.Json,
          data: {
            "userCurrency": "aed",
            "sort": sort,
            "filter": {
              "attributes": filters,
              "lang": "en",
              "country": "ae",
              "keyword": keyword,
              "_gaexp": "",
              "source": "product"
            }
          });
}
