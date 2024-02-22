import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';

/// A widget that displays a message indicating that there is no internet connection.
class NoInternetPage extends StatelessWidget {
  const NoInternetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const ValueKey('global-no-internet-widget'),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              CupertinoIcons.wifi_slash,
              color: context.colors.onSurface,
              size: 72.0.r,
            ),
            SizedBox(height: 24.0.h),
            Text(
              context.localizations.no_internet_connection,
              style: context.titleMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8.0.h),
            Text(
              context.localizations.no_internet_connection_message,
              style: context.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
