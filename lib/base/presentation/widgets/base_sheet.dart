import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/base/utils/resources/resources.dart';

/// A bottom sheet that displays a single widget.
///
/// The [BaseSheet] widget allows for easy display of a bottom sheet with a single widget.
class BaseSheet<T> extends StatelessWidget {
  /// Creates a new [BaseSheet] instance.
  ///
  /// The required [child] parameter is the widget to display in the bottom sheet.
  /// The optional [onClose] parameter is a callback to be called when the bottom sheet is closed.
  /// The optional [backgroundColor] parameter is the background color of the bottom sheet.
  /// The optional [heightFactor] parameter is the height of the bottom sheet as a fraction of the screen height.
  /// The optional [key] parameter is the key for this widget.
  const BaseSheet._({
    required this.child,
    required this.showDragHandle,
    this.onClose,
    this.backgroundColor,
    this.heightFactor,
    this.padding,
    super.key,
  });

  /// The widget to display in the bottom sheet.
  final Widget child;

  /// A callback to be called when the bottom sheet is closed.
  final ValueChanged<BuildContext>? onClose;

  /// The background color of the bottom sheet.
  final Color? backgroundColor;

  /// The height of the bottom sheet as a fraction of the screen height.
  final double? heightFactor;

  final EdgeInsetsGeometry? padding;
  final bool showDragHandle;

  /// Shows a new [BaseSheet] bottom sheet.
  ///
  /// The required [child] parameter is the widget to display in the bottom sheet.
  /// The optional [context] parameter is the context in which to display the bottom sheet.
  /// It defaults to the current context.
  /// The optional [addHeader] parameter determines if the bottom sheet should have a header. It defaults to `true`.
  /// The optional [enableDrag] parameter determines if the bottom sheet can be dragged down to close.
  /// It defaults to `true`.
  /// The optional [isDismissible] parameter determines if the bottom sheet can be dismissed by tapping outside
  /// the sheet. It defaults to `true`.
  /// The optional [backgroundColor] parameter is the background color of the bottom sheet.
  /// The optional [onClose] parameter is a callback to be called when the bottom sheet is closed.
  /// The optional [heightFactor] parameter is the height of the bottom sheet as a fraction of the screen height.
  static Future<T?> show<T>({
    required BuildContext? context,
    required Widget child,
    bool addHeader = true,
    bool enableDrag = true,
    bool isDismissible = true,
    Color? backgroundColor,
    ValueChanged<BuildContext>? onClose,
    double? heightFactor,
    EdgeInsetsGeometry? padding,
    bool showDragHandle = false,
  }) =>
      showModalBottomSheet<T>(
          context: context ?? Resources.router.navigatorKey.currentContext!,
          enableDrag: enableDrag,
          isDismissible: isDismissible,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(16.0.r))),
          builder: (_) {
            final sheet = BaseSheet._(
              onClose: onClose,
              showDragHandle: showDragHandle,
              backgroundColor: backgroundColor,
              heightFactor: heightFactor,
              padding: padding,
              child: child,
            );
            if (heightFactor != null) {
              return FractionallySizedBox(heightFactor: heightFactor, child: sheet);
            }
            return sheet;
          });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? context.colors.surface,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0.r)),
      ),
      padding: padding ?? EdgeInsets.only(left: 16.0.w, right: 16.0.w, bottom: context.viewInsets.bottom + 44.0.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showDragHandle)
            Container(
              margin: EdgeInsets.symmetric(vertical: 12.0.h),
              width: 36.0.w,
              height: 6.0.h,
              decoration: BoxDecoration(
                color: context.colors.outline,
                borderRadius: BorderRadius.circular(16.0.r),
              ),
            ),
          if (heightFactor != null)
            Expanded(child: child)
          else
            Flexible(
              child: SingleChildScrollView(child: child),
            ),
        ],
      ),
    );
  }
}
