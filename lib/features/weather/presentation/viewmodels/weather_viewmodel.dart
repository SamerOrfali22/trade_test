import 'package:injectable/injectable.dart';
import 'package:rx_viewmodels/viewmodel.dart';
import 'package:weather_app/base/presentation/viewmodels/base_viewmodel.dart';
import 'package:weather_app/features/weather/data/models/weather_response_model.dart';
import 'package:weather_app/features/weather/domain/repository/weather_repository.dart';

@injectable
class WeatherViewmodel extends BaseViewmodel {
  WeatherViewmodel(this._weatherRepository);

  final WeatherRepository _weatherRepository;

  @override
  void onInit() {
    super.onInit();
    fetchWeather();
  }

  late final futureWeatherModel = RxResultFuture<WeatherResponseModel>();

  void fetchWeather() {
    final lat = '25.2582';
    final lon = '55.3047';
    futureWeatherModel(_weatherRepository.fetchWeatherByCoord(lat: lat, lon: lon));
  }

  @override
  void dispose() {
    futureWeatherModel.disposeBy(this);
    super.dispose();
  }

  @override
  String get loggerTag => 'WeatherViewmodel';
}
