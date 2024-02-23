import 'package:dart_kit/dart_kit.dart';
import 'package:weather_app/features/weather/data/models/weather_response_model.dart';

abstract class WeatherRepository {
  Future<Result<WeatherResponseModel>> fetchWeatherByCoord({
    required String lat,
    required String lon,
  });
}
