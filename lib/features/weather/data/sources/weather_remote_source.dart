import 'package:dart_kit/dart_kit.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/base/data/networking/end_points.dart';
import 'package:weather_app/base/data/networking/http_client.dart';
import 'package:weather_app/base/data/sources/base_remote_source.dart';
import 'package:weather_app/features/weather/data/models/weather_response_model.dart';

abstract class WeatherRemoteSource {
  Future<Result<WeatherResponseModel>> fetchWeatherByCoord({
    required String lat,
    required String lon,
  });
}

@LazySingleton(as: WeatherRemoteSource)
class WeatherRemoteSourceImpl extends BaseRemoteSource implements WeatherRemoteSource {
  WeatherRemoteSourceImpl(super.client);

  @override
  Future<Result<WeatherResponseModel>> fetchWeatherByCoord({required String lat, required String lon}) {
    return request(
      method: HttpMethod.GET,
      endpoint: EndPoints.weather,
      queryParameters: {
        'lat': lat,
        'lon': lon,
        'units': 'metric',
      },
      serializer: (json) => WeatherResponseModel.fromJson(json),
    );
  }

  @override
  String get loggerTag => 'WeatherRemoteSource';
}
