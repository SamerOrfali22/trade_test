import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/features/weather/data/models/weather_condition_model.dart';

class WeatherConditionWidget extends StatelessWidget {
  const WeatherConditionWidget({Key? key, required this.model}) : super(key: key);
  final WeatherConditionModel? model;

  @override
  Widget build(BuildContext context) {
    if (model == null) return const SizedBox();
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          model!.main.icon,
          width: 20,
          height: 20,
        ),
        SizedBox(width: 5.w),
        if (model!.description.isNotNull)
          Text(
            model!.description!,
            style: context.titleLarge?.copyWith(
              color: context.colors.onPrimary,
            ),
          ),
      ],
    );
  }
}
