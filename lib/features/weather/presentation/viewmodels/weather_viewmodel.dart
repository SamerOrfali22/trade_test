import 'dart:developer';

import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:rx_viewmodels/viewmodel.dart';
import 'package:weather_app/base/presentation/viewmodels/base_viewmodel.dart';
import 'package:weather_app/features/forecast/presentation/viewmodels/forecast_viewmodel.dart';
import 'package:weather_app/features/weather/data/models/weather_response_model.dart';
import 'package:weather_app/features/weather/domain/repository/weather_repository.dart';
import 'package:weather_app/features/weather/presentation/widgets/dialogs/premission_dialog.dart';

@injectable
class WeatherViewmodel extends BaseViewmodel {
  WeatherViewmodel(this._weatherRepository);

  final WeatherRepository _weatherRepository;

  final ForecastViewmodel forecastViewmodel = ForecastViewmodel();

  final selectedLat = RxDouble(25.2582);
  final selectedLon = RxDouble(55.3047);
  final RxBool showLocateMeButton = RxBool(false);

  @override
  void onInit() {
    super.onInit();
    fetchCurrentLocation();
  }

  late final futureWeatherModel = RxResultFuture<WeatherResponseModel>();

  void fetchCurrentLocation() {
    searchController.clear();
    showLocateMeButton(false);
    getLocation().then((value) => fetchWeatherByCoord());
  }

  void fetchWeatherByCoord() => futureWeatherModel(_weatherRepository
      .fetchWeatherByCoord(
        lat: selectedLat.value.toString(),
        lon: selectedLon.value.toString(),
      )
      .doOnDataResult((result) => fetchForecast()));

  void fetchWeatherByCity({required String city}) => futureWeatherModel(
        _weatherRepository.fetchWeatherByCity(city: city).doOnDataResult(
          (result) {
            changeCoord(lat: result.value.coord?.lat, lon: result.value.coord?.lon);
            fetchForecast();
            searchController.clear();
            showLocateMeButton(true);
          },
        ).doOnErrorResult((value) => showLocateMeButton(false)),
      );

  TextEditingController searchController = TextEditingController();

  void onSubmitSearch() {
    fetchWeatherByCity(city: searchController.text);
  }

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
      changeCoord(lat: position.latitude, lon: position.longitude);
    }
  }

  void changeCoord({required double? lat, required double? lon}) {
    if (lat == null || lon == null) return;
    selectedLon.value = lon;
    selectedLat.value = lat;
  }

  void fetchForecast() => forecastViewmodel.fetchForecast(
        lat: selectedLat.value.toString(),
        lon: selectedLon.value.toString(),
      );

  @override
  void dispose() {
    futureWeatherModel.disposeBy(this);
    super.dispose();
  }

  @override
  String get loggerTag => 'WeatherViewmodel';
}
