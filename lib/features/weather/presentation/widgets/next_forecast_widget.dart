import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/base/presentation/routing/app_router.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';

class NextForecastWidget extends StatelessWidget {
  const NextForecastWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.navigateTo(ForecastRoute()),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.only(
            topEnd: Radius.circular(25),
            bottomEnd: Radius.circular(25),
          ),
          color: context.colors.onSecondaryContainer.withOpacity(.7),
        ),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
        margin: EdgeInsets.all(14),
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.calendar_month, color: context.colors.onPrimary, size: 25),
                  SizedBox(width: 10.w),
                  Text(
                    'Next Forecast',
                    style: context.headlineMedium?.copyWith(fontSize: 16, color: context.colors.onPrimary),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_circle_right_outlined, color: context.colors.onPrimary, size: 25),
          ],
        ),
      ),
    );
  }
}
