import 'package:dart_kit/dart_kit.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/base/data/networking/end_points.dart';
import 'package:weather_app/base/data/networking/http_client.dart';
import 'package:weather_app/base/data/sources/base_remote_source.dart';
import 'package:weather_app/features/forecast/data/models/forecast_response_model.dart';

abstract class ForecastRemoteSource {
  Future<Result<ForecastResponseModel>> fetchForecastByCoord({
    required String lat,
    required String lon,
  });
}

@LazySingleton(as: ForecastRemoteSource)
class ForecastRemoteSourceImpl extends BaseRemoteSource implements ForecastRemoteSource {
  ForecastRemoteSourceImpl(super.client);

  @override
  Future<Result<ForecastResponseModel>> fetchForecastByCoord({
    required String lat,
    required String lon,
  }) {
    return request(
      method: HttpMethod.GET,
      endpoint: EndPoints.forecast,
      queryParameters: {
        'lat': lat,
        'lon': lon,
        'units': 'metric',
      },
      serializer: (json) => ForecastResponseModel.fromJson(json),
    );
  }

  @override
  String get loggerTag => 'ForecastRemoteSource';
}
