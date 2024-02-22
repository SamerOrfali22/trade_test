import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:separated_row/separated_row.dart';
import 'package:weather_app/base/presentation/widgets/buttons/loadable_widget.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';

class BaseElevatedButton extends StatelessWidget {
  const BaseElevatedButton({
    required this.onPressed,
    required this.label,
    required this.type,
    this.child,
    this.isEnabled = true,
    this.isLoading = false,
    this.isFullWidth = true,
    this.icon,
    super.key,
  });

  factory BaseElevatedButton.onPrimary({
    required VoidCallback onPressed,
    required String label,
    bool isEnabled = true,
    bool isLoading = false,
    bool isFullWidth = true,
    Widget? child,
    Widget? icon,
    Key? key,
  }) =>
      BaseElevatedButton(
        key: key,
        onPressed: onPressed,
        label: label,
        type: ElevatedButtonType.OnPrimary,
        isEnabled: isEnabled,
        isFullWidth: isFullWidth,
        isLoading: isLoading,
        icon: icon,
        child: child,
      );

  factory BaseElevatedButton.tertiary({
    required VoidCallback onPressed,
    required String label,
    bool isEnabled = true,
    bool isLoading = false,
    bool isFullWidth = true,
    Widget? child,
    Widget? icon,
  }) =>
      BaseElevatedButton(
        onPressed: onPressed,
        label: label,
        type: ElevatedButtonType.Tertiary,
        isEnabled: isEnabled,
        isFullWidth: isFullWidth,
        isLoading: isLoading,
        icon: icon,
        child: child,
      );

  factory BaseElevatedButton.primaryContainer({
    required VoidCallback onPressed,
    required String label,
    bool isEnabled = true,
    bool isLoading = false,
    bool isFullWidth = true,
    Widget? child,
    Widget? icon,
  }) =>
      BaseElevatedButton(
        onPressed: onPressed,
        label: label,
        type: ElevatedButtonType.PrimaryContainer,
        isEnabled: isEnabled,
        isFullWidth: isFullWidth,
        isLoading: isLoading,
        icon: icon,
        child: child,
      );

  final ElevatedButtonType type;

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
        children: [icon!, Flexible(child: Text(label))],
      );
    } else {
      buttonChild = Text(label);
    }

    return LoadableWidget(isLoading: isLoading, child: buttonChild);
  }
}

enum ElevatedButtonType {
  OnPrimary,
  Tertiary,
  PrimaryContainer,
  ;

  ButtonStyle buttonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      elevation: 0,
      textStyle: context.labelSmall,
      foregroundColor: foregroundColor(context),
      backgroundColor: backgroundColor(context),
      disabledBackgroundColor: context.colors.surfaceVariant,
      disabledForegroundColor: context.colors.outline,
      padding: EdgeInsets.symmetric(vertical: 12.0.h, horizontal: 18.0.w),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0.r)),
    );
  }

  Color foregroundColor(BuildContext context) {
    switch (this) {
      case ElevatedButtonType.OnPrimary:
        return context.colors.primary;
      case ElevatedButtonType.Tertiary:
        return context.colors.onPrimary;
      case ElevatedButtonType.PrimaryContainer:
        return context.colors.onPrimaryContainer;
    }
  }

  Color backgroundColor(BuildContext context) {
    switch (this) {
      case ElevatedButtonType.OnPrimary:
        return context.colors.onPrimary;
      case ElevatedButtonType.Tertiary:
        return context.colors.tertiary;
      case ElevatedButtonType.PrimaryContainer:
        return context.colors.primaryContainer;
    }
  }
}
