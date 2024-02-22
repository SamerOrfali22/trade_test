import 'package:flutter/material.dart';
import 'package:weather_app/base/presentation/widgets/base_snackbar.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
  BuildContext context, {
  required SnackBarType type,
  required String message,
  SnackBarAction? action,
  SnackBarDuration duration = SnackBarDuration.SHORT,
  SnackBarBehavior? behavior,
}) =>
    ScaffoldMessenger.of(context).showSnackBar(
      BaseSnackBar(
        type: type,
        message: message,
        duration: duration,
        action: action,
        behavior: behavior,
      ),
    );
