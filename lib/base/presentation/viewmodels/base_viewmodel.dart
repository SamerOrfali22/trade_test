import 'package:flutter/material.dart';
import 'package:rx_viewmodels/viewmodel.dart';
import 'package:weather_app/base/presentation/widgets/base_snackbar.dart';
import 'package:weather_app/base/utils/ui_utils/mixins/snack_bar_mixin.dart';

abstract class BaseViewmodel extends GetxViewmodel {
  void _showSnackBar({
    required SnackBarType type,
    required String Function(BuildContext context) messageBuilder,
    SnackBarAction Function(BuildContext context)? actionBuilder,
    SnackBarDuration duration = SnackBarDuration.SHORT,
    SnackBarBehavior? behavior,
  }) =>
      getContext(
        (context) => showSnackBar(
          context,
          duration: duration,
          type: type,
          message: messageBuilder(context),
          action: actionBuilder?.call(context),
          behavior: behavior,
        ),
      );

  void showInfoSnackBar({
    required String Function(BuildContext context) messageBuilder,
    SnackBarAction Function(BuildContext context)? actionBuilder,
    SnackBarDuration duration = SnackBarDuration.SHORT,
    SnackBarBehavior? behavior,
  }) =>
      _showSnackBar(
        type: SnackBarType.Info,
        messageBuilder: messageBuilder,
        actionBuilder: actionBuilder,
        duration: duration,
        behavior: behavior,
      );

  void showSuccessSnackBar({
    required String Function(BuildContext context) messageBuilder,
    SnackBarAction Function(BuildContext context)? actionBuilder,
    SnackBarDuration duration = SnackBarDuration.SHORT,
    SnackBarBehavior? behavior,
  }) =>
      _showSnackBar(
        type: SnackBarType.Success,
        messageBuilder: messageBuilder,
        actionBuilder: actionBuilder,
        duration: duration,
        behavior: behavior,
      );

  void showErrorSnackBar({
    required String Function(BuildContext context) messageBuilder,
    SnackBarAction Function(BuildContext context)? actionBuilder,
    SnackBarDuration duration = SnackBarDuration.SHORT,
    SnackBarBehavior? behavior,
  }) =>
      _showSnackBar(
        type: SnackBarType.Error,
        messageBuilder: messageBuilder,
        actionBuilder: actionBuilder,
        duration: duration,
        behavior: behavior,
      );
}
