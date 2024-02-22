import 'package:flutter/material.dart';
import 'package:rx_viewmodels/src/base/base_viewmodel.dart';
import 'package:rx_viewmodels/src/base/mixins/viewmodel_initializer_mixin.dart';
import 'package:rx_viewmodels/src/base/ui_error.dart';

/// base view model page to create [BaseViewmodel] with support to customize
/// initializer with override to factory param [viewmodelParam1] and
/// [viewmodelParam2] and provide error handling strategy.
abstract class BasePage<T extends StatefulWidget, V extends BaseViewmodel> extends State<T>
    with ViewmodelInitializerMixin<T, V> {
  @override
  void initState() {
    super.initState();
    setupErrorHandler(_handleError);
  }

  /// error handling logic, will called each time [viewmodel.uiError] changed.
  void _handleError(UiError? uiError) {
    if (uiError != null) {
      if (!onError(uiError)) {
        onGeneralError(uiError);
      }
      viewmodel.clearUiError(uiError.id);
    }
  }

  /// mandatory function provide error handler logic to the implementer.
  /// implementer must propagate [viewmodel.uiError] changes to [handler].
  void setupErrorHandler(void Function(UiError? uiError) handler);

  /// hook to prevent error propagation to [onGeneralError].
  /// return [true] will stop error propagation, the default behavior is
  /// to always propagate to [onGeneralError].
  bool onError(UiError error) => false;

  /// the last fallback to any error not handled.
  void onGeneralError(UiError error);
}
