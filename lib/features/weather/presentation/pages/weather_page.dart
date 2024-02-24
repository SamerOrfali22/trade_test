import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/base/presentation/pages/base_page.dart';
import 'package:weather_app/base/presentation/widgets/rx/base_result_future_builder.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/features/app/presentation/app_background_widget.dart';
import 'package:weather_app/features/app/presentation/viewmodels/app_viewmodel.dart';
import 'package:weather_app/features/weather/presentation/viewmodels/weather_viewmodel.dart';
import 'package:weather_app/features/weather/presentation/widgets/city_not_found_widget.dart';
import 'package:weather_app/features/weather/presentation/widgets/next_forecast_widget.dart';
import 'package:weather_app/features/weather/presentation/widgets/today_forecast_widget.dart';
import 'package:weather_app/features/weather/presentation/widgets/weather_header_widget.dart';

import '../widgets/search_widget.dart';

@RoutePage()
class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);
  static const String routePath = '/WeatherPage';

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends BasePage<WeatherPage, WeatherViewmodel> {
  AppViewmodel get appViewmodel => GetIt.I<AppViewmodel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackgroundWidget(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40.h),
              SearchWidget(viewmodel: viewmodel),
              SizedBox(height: 40.h),
              BaseResultFutureBuilder(
                future: viewmodel.futureWeatherModel,
                onRetry: () => viewmodel.fetchWeatherByCoord(),
                onError: (_) => CityNotFoundWidget(viewmodel: viewmodel),
                onLoading: () => Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: SpinKitThreeBounce(
                    color: context.colors.onPrimary,
                    size: 28.0.r,
                  ),
                ),
                onSuccess: (data) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(
                        () => WeatherHeaderWidget(
                          model: data,
                          cityName: viewmodel.forecastViewmodel.city.value?.name,
                        ),
                      ),
                      SizedBox(height: 30.h),
                      TodayForecastWidget(viewmodel: viewmodel.forecastViewmodel),
                      SizedBox(height: 30.h),
                      NextForecastWidget(viewmodel: viewmodel.forecastViewmodel),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  String get loggerTag => 'WeatherPage';
}
