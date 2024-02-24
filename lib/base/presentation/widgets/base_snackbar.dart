import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/base/utils/resources/resources.dart';

// The BaseSnackBar is a custom [SnackBar] that displays a short message at the bottom of the screen.
// The BaseSnackBar has a customizable duration, which can be set to SHORT, MEDIUM, or LONG using
// the SnackBarDuration enum.
// You can also set a custom duration by passing in a Duration object to the customDuration parameter.
// By default, the BaseSnackBar has a floating behavior, which means that the snackbar will float above other widgets.
// You can customize the SnackBar further by passing in a widget to the action parameter.
class BaseSnackBar extends SnackBar {
  BaseSnackBar({
    required SnackBarType type,
    required String message,
    SnackBarDuration duration = SnackBarDuration.SHORT,
    Duration? customDuration,
    super.behavior,
    super.key,
    super.action,
  }) : super(
          content: Row(
            children: [
              type.icon(Resources.appContext!),
              SizedBox(width: 8.0.w),
              Flexible(child: type.text(Resources.appContext!, message)),
            ],
          ),
          backgroundColor: type.backgroundColor(Resources.appContext!),
          duration: customDuration ?? duration.duration,
        );
}

enum SnackBarDuration {
  SHORT(Duration(seconds: 3)),
  MEDIUM(Duration(seconds: 6)),
  LONG(Duration(seconds: 9)),
  ;

  const SnackBarDuration(this.duration);

  final Duration duration;
}

enum SnackBarType {
  Info,
  Success,
  Error,
  ;

  Widget text(BuildContext context, String message) {
    late final Color backgroundColor;
    switch (this) {
      case SnackBarType.Info:
        backgroundColor = context.colors.onTertiaryContainer;
        break;

      case SnackBarType.Success:
        backgroundColor = context.colors.onPrimary;
        break;

      case SnackBarType.Error:
        backgroundColor = context.colors.onErrorContainer;
        break;
    }

    return Text(message, style: context.bodyLarge?.copyWith(color: backgroundColor));
  }

  Color backgroundColor(BuildContext context) {
    switch (this) {
      case SnackBarType.Info:
        return context.colors.tertiaryContainer;

      case SnackBarType.Success:
        return context.colors.secondaryContainer;

      case SnackBarType.Error:
        return context.colors.errorContainer;
    }
  }

  Widget icon(BuildContext context) {
    late final Color backgroundColor;

    switch (this) {
      case SnackBarType.Info:
        backgroundColor = context.colors.primary;
        break;

      case SnackBarType.Success:
        backgroundColor = context.colors.secondary;
        break;

      case SnackBarType.Error:
        backgroundColor = context.colors.error;
        break;
    }

    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
      padding: EdgeInsets.all(6.0.r),
    );
  }
}
