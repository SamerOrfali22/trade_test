import 'package:flutter/material.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/features/weather/data/models/weather_info_model.dart';

class TempWidget extends StatelessWidget {
  const TempWidget({Key? key, required this.model}) : super(key: key);
  final WeatherInfoModel? model;

  @override
  Widget build(BuildContext context) {
    if (model == null || model?.temp == null) return const SizedBox();
    return Text(
      "${model!.temp!.floor()}°",
      style: context.titleLarge?.copyWith(
        fontSize: 22,
        color: context.colors.onPrimary,
      ),
    );
  }
}
