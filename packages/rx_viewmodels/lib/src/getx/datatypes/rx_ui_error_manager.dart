import 'package:collection/collection.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:rx_viewmodels/src/base/ui_error.dart';

/// UI error tracker used as queue of errors to ensure that every error will
/// handled.
class RxUiErrorManager extends Rxn<UiError> {
// class RxUiErrorManager {
  RxUiErrorManager();

  /// error queue
  final List<UiError> _errors = [];

  List<UiError> get errors => UnmodifiableListView(_errors);

  /// get current ui error.
  // UiError? get uiError => _errors.firstOrNull;
  UiError? get uiError => value;

  /// add ui error to [_errors].
  void emitError(UiError error) {
    _errors.add(error);
    value = _errors.firstOrNull;
  }

  /// remove error with [id] from [_errors].
  void clearUiError(String id) {
    _errors.removeWhere((it) => it.id == id);
    value = _errors.firstOrNull;
  }
}
