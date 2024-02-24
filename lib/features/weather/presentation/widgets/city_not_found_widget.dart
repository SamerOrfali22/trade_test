import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/base/presentation/theme/app_theme.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/features/weather/presentation/viewmodels/weather_viewmodel.dart';
import 'package:weather_app/features/weather/presentation/widgets/locate_me_widget.dart';

class CityNotFoundWidget extends StatelessWidget {
  const CityNotFoundWidget({Key? key, required this.viewmodel}) : super(key: key);
  final WeatherViewmodel viewmodel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 130.h),
      child: Container(
        decoration: context.theme.boxDecoration,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Sorry City Not Found!\n\nSearch Again!\n\nor',
              style: context.titleLarge?.copyWith(fontSize: 16, color: context.colors.onPrimary),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.h),
            LocateMeWidget(onTap: () => viewmodel.fetchCurrentLocation()),
          ],
        ),
      ),
    );
  }
}
