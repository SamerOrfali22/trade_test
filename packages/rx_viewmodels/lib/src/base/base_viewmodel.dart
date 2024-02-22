import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/material.dart';
import 'package:rx_viewmodels/src/base/mixins/disposer_mixin.dart';
import 'package:rx_viewmodels/src/base/ui_error.dart';

/// Base Viewmodel Contract
///
/// force the implementer to provide loading, error handling functionality.
abstract class BaseViewmodel with DisposersMixin, Loggable {
  /// will called when initiating this class
  @mustCallSuper
  void onInit() {}

  /// called once, after `build(BuildContext)` called for the first time.
  @mustCallSuper
  void onPostFrame(BuildContext context) {}

  /// flag to know if viewmodel is loading state.
  bool get isLoading;

  /// start loading process.
  void startLoading();

  /// stop loading process.
  void stopLoading();

  /// thrown error to propagate to ui.
  UiError? get uiError;

  /// clear error with [id].
  void clearUiError(String id) {}

  /// add new error
  void emitUiError(Object error) {}

  /// clean up
  @mustCallSuper
  void dispose();
}
