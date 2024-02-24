import 'package:dart_kit/src/models/result.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/features/weather/data/models/weather_response_model.dart';
import 'package:weather_app/features/weather/data/sources/weather_remote_source.dart';
import 'package:weather_app/features/weather/domain/repository/weather_repository.dart';

@LazySingleton(as: WeatherRepository)
class WeatherRepositoryImpl implements WeatherRepository {
  WeatherRepositoryImpl(this._weatherRemoteSource);

  final WeatherRemoteSource _weatherRemoteSource;

  @override
  Future<Result<WeatherResponseModel>> fetchWeatherByCoord({required String lat, required String lon}) =>
      _weatherRemoteSource.fetchWeatherByCoord(lat: lat, lon: lon);

  @override
  Future<Result<WeatherResponseModel>> fetchWeatherByCity({required String city}) =>
      _weatherRemoteSource.fetchWeatherByCity(city: city);
}
