import 'package:flutter_test/flutter_test.dart';
import 'package:rx_viewmodels/src/getx/datatypes/rx_ui_error_manager.dart';
import 'package:rx_viewmodels/viewmodel.dart';

void main() {
  group('RxUiErrorManager', () {
    test('emitError adds UiError to _errors', () {
      // create a new RxUiErrorManager
      final errorManager = RxUiErrorManager();

      // create a new UiError
      final uiError = UiError.generate('This is an error');

      // emit the UiError
      errorManager.emitError(uiError);

      // expect the _errors list to contain the UiError
      expect(errorManager.errors, equals([uiError]));
    });

    test('clearUiError removes UiError from _errors', () {
      // create a new RxUiErrorManager
      final errorManager = RxUiErrorManager();

      // create a new UiError
      final uiError1 = UiError.generate('This is an error');
      final uiError2 = UiError.generate('This is an error');

      // add the UiError to the error manager
      errorManager
        ..emitError(uiError1)
        ..emitError(uiError2)
        // clear the UiError
        ..clearUiError(uiError1.id);

      // expect the _errors list to be empty
      expect(errorManager.errors, [uiError2]);
    });

    test('uiError returns the first UiError in _errors', () {
      // create a new RxUiErrorManager
      final errorManager = RxUiErrorManager();

      // create two new UiErrors
      final uiError1 = UiError.generate('This is the first error');
      final uiError2 = UiError.generate('This is the second error');

      // add the UiErrors to the error manager
      errorManager
        ..emitError(uiError1)
        ..emitError(uiError2);

      // expect uiError to return the first UiError in the _errors list
      expect(errorManager.uiError, equals(uiError1));
    });
  });
}
