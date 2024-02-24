import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/base/presentation/theme/app_theme.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/features/forecast/presentation/viewmodels/forecast_viewmodel.dart';

class TodayForecastWidget extends StatelessWidget {
  const TodayForecastWidget({Key? key, required this.viewmodel}) : super(key: key);
  final ForecastViewmodel viewmodel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Theme.of(context).boxDecoration,
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Today',
                style: context.titleLarge?.copyWith(color: context.colors.onPrimary),
              ),
              Text(
                formatDateTime(DateTime.now()),
                style: context.titleLarge?.copyWith(color: context.colors.onPrimary),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Obx(
              () => Row(
                children: viewmodel.todayList
                    .map(
                      (element) => Padding(
                        padding: EdgeInsetsDirectional.only(end: 30.w),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (element.main?.temp.isNotNull ?? false)
                              Padding(
                                padding: EdgeInsets.only(bottom: 15.h),
                                child: Text(
                                  "${element.main!.temp!.floor()}°",
                                  style: context.titleLarge?.copyWith(color: context.colors.onPrimary),
                                ),
                              ),
                            if (element.weather?.first.isNotNull ?? false)
                              Padding(
                                padding: EdgeInsets.only(bottom: 15.h),
                                child: SvgPicture.asset(
                                  element.weather!.first.main.icon,
                                  width: 25,
                                  height: 25,
                                ),
                              ),
                            if (element.dtTxt.isNotNull)
                              Text(
                                DateFormat.Hm().format(element.dtTxt!),
                                style: context.titleLarge?.copyWith(color: context.colors.onPrimary),
                              ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String formatDateTime(DateTime dateTime) {
    return '${DateFormat.MMMM().format(dateTime)}, ${dateTime.day}';
  }
}
