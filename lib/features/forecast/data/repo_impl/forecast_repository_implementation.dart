import 'package:dart_kit/src/models/result.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/features/forecast/data/models/forecast_response_model.dart';
import 'package:weather_app/features/forecast/data/sources/forecast_remote_source.dart';
import 'package:weather_app/features/forecast/domain/repository/forecast_repository.dart';

@LazySingleton(as: ForecastRepository)
class ForecastRepositoryImpl implements ForecastRepository {
  ForecastRepositoryImpl(this._forecastRemoteSource);

  final ForecastRemoteSource _forecastRemoteSource;

  @override
  Future<Result<ForecastResponseModel>> fetchForecastByCoord({
    required String lat,
    required String lon,
  }) =>
      _forecastRemoteSource.fetchForecastByCoord(lat: lat, lon: lon);
}
