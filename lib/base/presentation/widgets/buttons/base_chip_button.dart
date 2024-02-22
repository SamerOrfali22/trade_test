import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:separated_row/separated_row.dart';
import 'package:weather_app/base/presentation/widgets/buttons/loadable_widget.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';

class BaseChipButton extends StatelessWidget {
  const BaseChipButton._({
    required this.onPressed,
    required this.label,
    required this.type,
    this.child,
    this.isEnabled = true,
    this.isLoading = false,
    this.isFullWidth = true,
    this.icon,
  });

  factory BaseChipButton.background({
    required VoidCallback onPressed,
    required String label,
    bool isEnabled = true,
    bool isLoading = false,
    bool isFullWidth = true,
    Widget? child,
    Widget? icon,
  }) =>
      BaseChipButton._(
        onPressed: onPressed,
        label: label,
        type: _ButtonType.background,
        isEnabled: isEnabled,
        isFullWidth: isFullWidth,
        isLoading: isLoading,
        icon: icon,
        child: child,
      );

  factory BaseChipButton.tertiary({
    required VoidCallback onPressed,
    required String label,
    bool isEnabled = true,
    bool isLoading = false,
    bool isFullWidth = true,
    Widget? child,
    Widget? icon,
  }) =>
      BaseChipButton._(
        onPressed: onPressed,
        label: label,
        type: _ButtonType.OnTertiaryContainer,
        isEnabled: isEnabled,
        isFullWidth: isFullWidth,
        isLoading: isLoading,
        icon: icon,
        child: child,
      );

  factory BaseChipButton.error({
    required VoidCallback onPressed,
    required String label,
    bool isEnabled = true,
    bool isLoading = false,
    bool isFullWidth = true,
    Widget? child,
    Widget? icon,
  }) =>
      BaseChipButton._(
        onPressed: onPressed,
        label: label,
        type: _ButtonType.onErrorContainer,
        isEnabled: isEnabled,
        isFullWidth: isFullWidth,
        isLoading: isLoading,
        icon: icon,
        child: child,
      );

  final _ButtonType type;

  final VoidCallback onPressed;
  final bool isEnabled;
  final bool isLoading;
  final String label;
  final bool isFullWidth;
  final Widget? child;
  final Widget? icon;

  bool get _isEnabled => isEnabled && !isLoading;

  @override
  Widget build(BuildContext context) {
    final button = ElevatedButton(
      style: type.buttonStyle(context),
      onPressed: _isEnabled ? () => _onPressed(context) : null,
      child: _buildChild(context),
    );

    if (isFullWidth) {
      return SizedBox(width: double.infinity, child: button);
    }

    return button;
  }

  void _onPressed(BuildContext context) {
    FocusScope.of(context).unfocus();
    onPressed();
  }

  Widget _buildChild(BuildContext context) {
    late final Widget buttonChild;
    if (child.isNotNull) {
      buttonChild = child!;
    } else if (icon != null) {
      buttonChild = SeparatedRow(
        separatorBuilder: (_, __) => SizedBox(width: 4.0.w),
        mainAxisSize: MainAxisSize.min,
        children: [
          icon!,
          Flexible(
            child: Text(
              label,
              style: type.buttonTextStyle(context),
            ),
          ),
        ],
      );
    } else {
      buttonChild = Text(
        label,
        style: type.buttonTextStyle(context),
      );
    }

    return LoadableWidget(isLoading: isLoading, child: buttonChild);
  }
}

enum _ButtonType {
  onTertiary,
  OnTertiaryContainer,
  onErrorContainer,
  background;

  ButtonStyle buttonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      elevation: 0,
      textStyle: context.labelSmall,
      foregroundColor: foregroundColor(context),
      backgroundColor: backgroundColor(context),
      padding: EdgeInsets.symmetric(vertical: 3.0.h, horizontal: 16.0.w),
      minimumSize: Size.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0.r)),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }

  Color foregroundColor(BuildContext context) {
    switch (this) {
      case _ButtonType.onTertiary:
        return context.colors.onTertiaryContainer;
      case _ButtonType.OnTertiaryContainer:
        return context.colors.onTertiary;
      case _ButtonType.onErrorContainer:
        return context.colors.onError;
      case _ButtonType.background:
        return context.colors.surfaceVariant;
    }
  }

  Color backgroundColor(BuildContext context) {
    switch (this) {
      case _ButtonType.onTertiary:
        return context.colors.onTertiary;
      case _ButtonType.OnTertiaryContainer:
        return context.colors.onTertiaryContainer;
      case _ButtonType.onErrorContainer:
        return context.colors.onErrorContainer;
      case _ButtonType.background:
        return context.colors.surfaceVariant;
    }
  }

  TextStyle? buttonTextStyle(BuildContext context) {
    switch (this) {
      case _ButtonType.background:
        return context.labelLarge;
      default:
        return null;
    }
  }
}
