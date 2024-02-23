import 'dart:developer';

import 'package:dart_kit/dart_kit.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:rx_viewmodels/viewmodel.dart';
import 'package:weather_app/base/presentation/viewmodels/base_viewmodel.dart';
import 'package:weather_app/features/app/presentation/viewmodels/app_viewmodel.dart';
import 'package:weather_app/features/weather/data/models/weather_response_model.dart';
import 'package:weather_app/features/weather/domain/repository/weather_repository.dart';
import 'package:weather_app/features/weather/presentation/widgets/dialogs/premission_dialog.dart';

@injectable
class WeatherViewmodel extends BaseViewmodel {
  WeatherViewmodel(this._weatherRepository);

  final WeatherRepository _weatherRepository;

  @override
  void onInit() {
    super.onInit();
    getLocation().then((value) => fetchWeather());
  }

  final selectedLat = RxDouble(25.2582);
  final selectedLon = RxDouble(55.3047);
  String? cityName;

  late final futureWeatherModel = RxResultFuture<WeatherResponseModel>();

  void fetchWeather() => futureWeatherModel(
        _weatherRepository.fetchWeatherByCoord(
          lat: selectedLat.value.toString(),
          lon: selectedLon.value.toString(),
        ),
      );

  Future<void> getLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.deniedForever) {
        // Show a dialog to enable location permissions in settings
        PermissionDialog.show();
        return;
      }
    }

    if (permission == LocationPermission.whileInUse || permission == LocationPermission.always) {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      log('Latitude: ${position.latitude}, Longitude: ${position.longitude}');
      selectedLat.value = position.latitude;
      selectedLon.value = position.longitude;
      setCityName(position);
    }
  }

  Future<void> setCityName(Position position) async {
    List<Placemark> placeMarks = await placemarkFromCoordinates(position.latitude, position.longitude);
    final isEnglishLang = GetIt.I<AppViewmodel>().language.isEnglish;
    cityName = isEnglishLang ? placeMarks.second?.locality : placeMarks.first.locality;
  }

  @override
  void dispose() {
    futureWeatherModel.disposeBy(this);
    super.dispose();
  }

  @override
  String get loggerTag => 'WeatherViewmodel';
}
