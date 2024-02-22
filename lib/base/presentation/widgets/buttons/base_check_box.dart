import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';

class BaseCheckBox extends StatelessWidget {
  const BaseCheckBox({
    required this.onChanged,
    required this.value,
    this.isDisabled = false,
    this.size,
    this.checkedColor,
    this.uncheckedColor,
    this.borderRadius,
    this.borderColor,
    this.innerBoxBorderRadius,
    super.key,
  });

  final bool value;
  final bool isDisabled;
  final ValueChanged<bool> onChanged;

  final double? size;
  final Color? checkedColor;
  final Color? uncheckedColor;
  final double? borderRadius;
  final Color? borderColor;
  final double? innerBoxBorderRadius;

  Color color(BuildContext context) =>
      value ? (checkedColor ?? context.colors.primary) : (uncheckedColor ?? context.colors.background);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isDisabled ? null : () => onChanged(!value),
      child: Container(
        width: size ?? 24.0.r,
        height: size ?? 24.0.r,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadius ?? 8.0.r),
          border: Border.all(color: borderColor ?? context.colors.primary),
        ),
        child: AnimatedContainer(
          duration: kTabScrollDuration,
          margin: EdgeInsets.all(2.0.r),
          decoration: BoxDecoration(
            color: color(context),
            borderRadius: BorderRadius.circular(borderRadius ?? 6.0.r),
            border: Border.all(color: context.colors.surfaceVariant, width: 2.0.r),
          ),
        ),
      ),
    );
  }
}
