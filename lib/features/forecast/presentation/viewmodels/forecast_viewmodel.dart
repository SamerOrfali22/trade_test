import 'package:dart_kit/dart_kit.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/base/presentation/viewmodels/base_viewmodel.dart';
import 'package:weather_app/features/forecast/data/models/city_model.dart';
import 'package:weather_app/features/forecast/data/models/forecast_model.dart';
import 'package:weather_app/features/forecast/domain/repository/forecast_repository.dart';

@injectable
class ForecastViewmodel extends BaseViewmodel {
  ForecastViewmodel();

  final ForecastRepository _forecastRepository = GetIt.I<ForecastRepository>();

  Rxn<CityModel> city = Rxn<CityModel>();

  RxList<ForecastModel> todayList = <ForecastModel>[].obs;
  RxList<ForecastModel> futureDailyList = <ForecastModel>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  void fetchForecast({required String lat, required String lon}) =>
      _forecastRepository.fetchForecastByCoord(lat: lat, lon: lon).doOnDataResult(
        (result) {
          city.value = result.value.city;
          addToList(result.value.list ?? []);
        },
      );

  void addToList(List<ForecastModel> list) {
    todayList.clear();
    futureDailyList.clear();
    list.forEach((element) {
      //today
      if (element.dtTxt?.weekday == DateTime.now().weekday) {
        todayList.add(element);
      }
      //future
      else {
        if (futureDailyList.isNotEmpty) {
          final last = futureDailyList.last;
          if (last.dtTxt?.weekday != element.dtTxt?.weekday) {
            futureDailyList.add(element);
          }
        } else {
          futureDailyList.add(element);
        }
      }
    });
  }

  @override
  String get loggerTag => 'ForecastViewmodel';
}
