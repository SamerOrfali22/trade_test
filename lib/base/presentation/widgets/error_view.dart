import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';

// A widget that displays an error message with a button to retry the failed action.
// The error message and the retry button can be customized.
class ErrorView extends StatelessWidget {
  const ErrorView({
    required this.message,
    required this.onAction,
    super.key,
    this.actionMessage,
  });

  final String message;
  final String? actionMessage;
  final VoidCallback onAction;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 32.0.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              message,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge,
            ),
            SizedBox(height: 8.0.h),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary,
                foregroundColor: theme.colorScheme.onPrimary,
                elevation: 0,
                visualDensity: VisualDensity.comfortable,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
                ),
              ),
              onPressed: onAction,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    actionMessage ?? context.localizations.retry,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                  SizedBox(width: 4.0.w),
                  Icon(
                    Icons.refresh,
                    color: theme.colorScheme.onPrimary,
                    size: 22.0.r,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
