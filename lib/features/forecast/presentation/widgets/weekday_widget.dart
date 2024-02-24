import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';

class WeekdayWidget extends StatelessWidget {
  const WeekdayWidget({Key? key, required this.time}) : super(key: key);
  final DateTime? time;

  @override
  Widget build(BuildContext context) {
    if (time == null) return const SizedBox();
    return Text(
      DateFormat.EEEE().format(time!),
      style: context.headlineLarge?.copyWith(
        fontSize: 20,
        color: context.colors.onPrimary,
      ),
    );
  }
}
