import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:separated_column/separated_column.dart';
import 'package:separated_row/separated_row.dart';
import 'package:weather_app/base/presentation/widgets/buttons/base_chip_button.dart';
import 'package:weather_app/base/presentation/widgets/dialogs/base_dialog.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog._({
    required this.onPositive,
    required this.onNegative,
    required this.positiveButtonTitle,
    required this.negativeButtonTitle,
  });

  final ValueChanged<BuildContext> onPositive;
  final ValueChanged<BuildContext>? onNegative;
  final String? positiveButtonTitle;
  final String? negativeButtonTitle;

  static Future<void> show({
    required title,
    required String confirmationMessage,
    required ValueChanged<BuildContext> onPositive,
    ValueChanged<BuildContext>? onNegative,
    String? positiveButtonTitle,
    String? negativeButtonTitle,
  }) =>
      BaseDialog.show(
        title: title,
        contentText: confirmationMessage,
        child: ConfirmationDialog._(
          onPositive: onPositive,
          onNegative: onNegative,
          positiveButtonTitle: positiveButtonTitle,
          negativeButtonTitle: negativeButtonTitle,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SeparatedColumn(
      separatorBuilder: (_, __) => SizedBox(height: 15.0.h),
      children: [
        SeparatedRow(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          separatorBuilder: (_, __) => SizedBox(width: 8.0.w),
          children: [
            BaseChipButton.tertiary(
              label: positiveButtonTitle ?? context.localizations.continue_,
              isFullWidth: false,
              onPressed: () {
                Navigator.of(context).pop();
                onPositive(context);
              },
            ),
            BaseChipButton.background(
              label: negativeButtonTitle ?? context.localizations.cancel,
              onPressed: () {
                Navigator.of(context).pop();
                onNegative?.call(context);
              },
              isFullWidth: false,
            ),
          ],
        ),
      ],
    );
  }
}
