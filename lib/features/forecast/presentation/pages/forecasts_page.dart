import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/base/presentation/pages/base_page.dart';
import 'package:weather_app/features/app/presentation/app_background_widget.dart';
import 'package:weather_app/features/forecast/presentation/viewmodels/forecast_viewmodel.dart';

@RoutePage()
class ForecastPage extends StatefulWidget {
  const ForecastPage({Key? key}) : super(key: key);
  static const String routePath = '/ForecastPage';

  @override
  State<ForecastPage> createState() => _ForecastPageState();
}

class _ForecastPageState extends BasePage<ForecastPage, ForecastViewmodel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackgroundWidget(
        child: Column(),
      ),
    );
  }

  @override
  String get loggerTag => 'ForecastPage';
}
