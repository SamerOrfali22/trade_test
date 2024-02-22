import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/base/presentation/widgets/loader.dart';

class LoadableWidget extends StatelessWidget {
  const LoadableWidget({
    required this.isLoading,
    required this.child,
    super.key,
  });

  final bool isLoading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: child),
        if (isLoading) ...{SizedBox(width: 4.0.w), Center(child: Loader(size: 14.0.r))}
      ],
    );
  }
}
