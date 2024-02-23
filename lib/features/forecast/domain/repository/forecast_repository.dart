import 'package:dart_kit/dart_kit.dart';
import 'package:weather_app/features/forecast/data/models/forecast_response_model.dart';

abstract class ForecastRepository {
  Future<Result<ForecastResponseModel>> fetchForecastByCoord({
    required String lat,
    required String lon,
  });
}
