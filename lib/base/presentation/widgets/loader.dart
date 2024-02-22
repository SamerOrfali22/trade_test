import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';

/// A widget that displays a spinner while data is loading.
class Loader extends StatelessWidget {
  const Loader({Key? key, this.color, this.size}) : super(key: key);

  static Widget circular({Key? key, Color? color, double? size, double? value, bool useCenter = true}) =>
      _CircularLoader(
        key: key,
        color: color,
        size: size,
        value: value,
        useCenter: useCenter,
      );

  /// The color of the spinner.
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SpinKitThreeBounce(
          color: color ?? context.colors.onPrimary,
          size: size ?? 24.0.r,
        ),
      ],
    );
  }
}

class _CircularLoader extends StatelessWidget {
  const _CircularLoader({
    Key? key,
    this.color,
    this.size,
    this.value,
    this.useCenter = true,
  }) : super(key: key);

  /// The color of the spinner.
  final Color? color;
  final double? size;
  final double? value;
  final bool useCenter;

  @override
  Widget build(BuildContext context) {
    final loader = SizedBox(
      width: size ?? 24.0.r,
      height: size ?? 24.0.r,
      child: CircularProgressIndicator(color: color ?? context.colors.background, value: value, strokeWidth: 2),
    );

    if (useCenter) {
      return Center(child: loader);
    }
    return loader;
  }
}
