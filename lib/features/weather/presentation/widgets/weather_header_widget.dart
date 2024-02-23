import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/features/weather/data/models/weather_response_model.dart';

class WeatherHeaderWidget extends StatelessWidget {
  const WeatherHeaderWidget({Key? key, required this.model}) : super(key: key);
  final WeatherResponseModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(end: 20.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on, color: context.colors.onPrimary, size: 27),
              Flexible(
                child: Text(
                  model.name,
                  style: context.headlineLarge?.copyWith(fontSize: 32, color: context.colors.onPrimary),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(start: 20.0.w),
          child: Text(
            "${model.main.temp}°",
            style: context.headlineLarge?.copyWith(fontSize: 60, color: context.colors.onPrimary),
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          model.weather.first.description,
          style: context.headlineLarge?.copyWith(fontSize: 20, color: context.colors.onPrimary),
        ),
        SizedBox(height: 10.h),
        Text(
          'Max:${model.main.tempMax}°    Min${model.main.tempMin}°',
          style: context.headlineMedium?.copyWith(color: context.colors.onPrimary),
        ),
        Container(
          height: 47,
          decoration: ShapeDecoration(
            color: context.colors.onPrimaryContainer.withOpacity(0.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 30.w),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset('assets/icons/humidity_icon.svg'),
                  SizedBox(width: 5.w),
                  Text(
                    model.main.humidity.toString() + '%',
                    style: context.titleLarge?.copyWith(color: context.colors.onPrimary),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset('assets/icons/wind_icon.svg'),
                  SizedBox(width: 5.w),
                  Text(
                    model.wind.speed.floor().toString() + ' km/h',
                    style: context.titleLarge?.copyWith(color: context.colors.onPrimary),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
