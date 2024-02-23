import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/base/presentation/pages/base_page.dart';
import 'package:weather_app/base/presentation/widgets/rx/base_result_future_builder.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/features/weather/presentation/viewmodels/weather_viewmodel.dart';

@RoutePage()
class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);
  static const String routePath = '/WeatherPage';

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends BasePage<WeatherPage, WeatherViewmodel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseResultFutureBuilder(
        future: viewmodel.futureWeatherModel,
        onRetry: () => viewmodel.fetchWeather(),
        onSuccess: (data) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  viewmodel.cityName.value ?? data.name,
                  style: TextStyle(fontSize: 16,color: Colors.red),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(data.base, style: context.labelMedium),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(data.name, style: context.labelMedium),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  '${data.weather.first.id}'
                  '${data.weather.first.main}'
                  '${data.weather.first.description}'
                  '${data.weather.first.icon}',
                  style: context.labelMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  '${data.main.feelsLike}'
                  '${data.main.humidity}'
                  '${data.main.temp}'
                  '${data.main.tempMin}'
                  '${data.main.tempMax}'
                  '${data.main.pressure}',
                  style: context.labelMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(data.clouds.all.toString(), style: context.labelMedium),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  '${data.coord.lat}'
                  '${data.coord.lon}',
                  style: context.labelMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  '${data.sys.type}'
                  '${data.sys.sunrise}'
                  '${data.sys.sunset}'
                  '${data.sys.country}',
                  style: context.labelMedium,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  String get loggerTag => 'WeatherPage';
}
