import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/features/forecast/data/models/forecast_model.dart';
import 'package:weather_app/features/forecast/presentation/widgets/temp_widget.dart';
import 'package:weather_app/features/forecast/presentation/widgets/weather_condition_widget.dart';
import 'package:weather_app/features/forecast/presentation/widgets/weekday_widget.dart';

class WeekDayForecastWidget extends StatelessWidget {
  const WeekDayForecastWidget({Key? key, required this.model}) : super(key: key);
  final ForecastModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Column(
        children: [
          Row(
            children: [
              WeekdayWidget(time: model.dtTxt),
              Expanded(
                child: WeatherConditionWidget(model: model.weather?.first),
              ),
              TempWidget(model: model.main),
            ],
          ),
          SizedBox(height: 30.h),
          Container(
            width: double.infinity,
            color: context.colors.onPrimary,
            height: 1,
          ),
        ],
      ),
    );
  }
}
