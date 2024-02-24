import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/base/presentation/pages/base_page.dart';
import 'package:weather_app/base/presentation/theme/app_theme.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/features/app/presentation/app_background_widget.dart';
import 'package:weather_app/features/forecast/presentation/viewmodels/forecast_viewmodel.dart';
import 'package:weather_app/features/forecast/presentation/widgets/weekday_forecast_widget.dart';

@RoutePage()
class ForecastPage extends StatefulWidget {
  const ForecastPage({Key? key, required this.viewmodel}) : super(key: key);
  static const String routePath = '/ForecastPage';
  final ForecastViewmodel viewmodel;

  @override
  State<ForecastPage> createState() => _ForecastPageState();
}

class _ForecastPageState extends BasePage<ForecastPage, ForecastViewmodel> {
  ///in this way we pass the viewmodel to the BasePage to use so to not create a new instance of the ForecastViewmodel
  ///and use the one passed from the home page

  @override
  ForecastViewmodel? get viewmodelAsParam => widget.viewmodel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackgroundWidget(
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 40.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => context.popRoute(),
                  child: Container(
                    decoration: BoxDecoration(shape: BoxShape.circle, color: context.colors.tertiaryContainer),
                    padding: EdgeInsets.all(8),
                    child: Icon(Icons.arrow_back, color: context.colors.onPrimary, size: 20),
                  ),
                ),
                SizedBox(height: 25.h),
                Text(
                  context.localizations.thisWeek,
                  style: context.headlineLarge?.copyWith(color: context.colors.onPrimary, fontSize: 30),
                ),
                SizedBox(height: 25.h),
                Container(
                  decoration: context.theme.boxDecoration,
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 25.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: viewmodel.futureDailyList
                        .map(
                          (model) => WeekDayForecastWidget(model: model),
                        )
                        .toList(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  String get loggerTag => 'ForecastPage';
}
