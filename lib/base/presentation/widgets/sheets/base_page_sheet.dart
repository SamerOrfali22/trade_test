import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/base/utils/resources/resources.dart';

/// A bottom sheet that displays a single widget in Cupertino sheet Style.
///
/// The [BasePageSheet] widget allows for easy display of a bottom sheet with a single widget.
class BasePageSheet extends StatelessWidget {
  /// Creates a new [BasePageSheet] instance.
  ///
  /// The required [child] parameter is the widget to display in the bottom sheet.
  /// The required [onClose] parameter is a callback to be called when the bottom sheet is closed.
  /// The optional [padding] parameter is the padding around the child widget.
  /// The optional [key] parameter is the key for this widget.
  const BasePageSheet._({
    required this.child,
    required this.onClose,
    this.padding,
    super.key,
  });

  /// The widget to display in the bottom sheet.
  final Widget child;

  /// A callback to be called when the bottom sheet is closed.
  final ValueChanged<BuildContext>? onClose;

  /// The padding around the child widget.
  final EdgeInsetsGeometry? padding;

  /// Shows a new [BasePageSheet] bottom sheet.
  ///
  /// The required [child] parameter is the widget to display in the bottom sheet.
  /// The optional [context] parameter is the context in which to display the bottom sheet.
  /// It defaults to the current context.
  /// The optional [enableDrag] parameter determines if the bottom sheet can be dragged down to close.
  /// It defaults to `true`.
  /// The optional [onClose] parameter is a callback to be called when the bottom sheet is closed.
  /// The optional [padding] parameter is the padding around the child widget.
  /// The optional [key] parameter is the key for the [BasePageSheet] widget.
  static Future<T?> show<T>({
    required Widget child,
    BuildContext? context,
    bool enableDrag = true,
    ValueChanged<BuildContext>? onClose,
    EdgeInsetsGeometry? padding,
    Key? key,
  }) =>
      showCupertinoModalBottomSheet<T>(
        context: context ?? Resources.router.navigatorKey.currentContext!,
        enableDrag: enableDrag,
        isDismissible: false,
        backgroundColor: (context ?? Resources.router.navigatorKey.currentContext!).colors.background,
        topRadius: Radius.circular(16.0.r),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(16.0.r))),
        builder: (_) => BasePageSheet._(
          key: key,
          onClose: onClose,
          padding: padding,
          child: child,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(true).apply(() => onClose?.call(context)),
      child: Scaffold(
        body: Padding(
          padding: padding ??
              EdgeInsets.only(
                left: 16.0.w,
                right: 16.0.w,
                bottom: context.viewInsets.bottom + 16.0.h,
                top: 16.0.h,
              ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(child: child),
            ],
          ),
        ),
      ),
    );
  }
}
