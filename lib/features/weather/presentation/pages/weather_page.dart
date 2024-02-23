import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/base/presentation/pages/base_page.dart';
import 'package:weather_app/base/presentation/widgets/rx/base_result_future_builder.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/features/app/presentation/viewmodels/app_viewmodel.dart';
import 'package:weather_app/features/weather/presentation/viewmodels/weather_viewmodel.dart';
import 'package:weather_app/features/weather/presentation/widgets/weather_header_widget.dart';

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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.22, -0.98),
            end: Alignment(-0.22, 0.98),
            colors: [
              context.colors.tertiary,
              context.colors.tertiaryContainer,
              context.colors.onTertiaryContainer,
            ],
          ),
        ),
        child: BaseResultFutureBuilder(
          future: viewmodel.futureWeatherModel,
          onRetry: () => viewmodel.fetchWeather(),
          onSuccess: (data) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100.h),
                WeatherHeaderWidget(model: data),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  String get loggerTag => 'WeatherPage';
}
