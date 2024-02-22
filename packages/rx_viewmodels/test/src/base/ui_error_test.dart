import 'package:flutter_test/flutter_test.dart';
import 'package:rx_viewmodels/src/base/ui_error.dart';

void main() {
  group('UiError', () {
    test('generate creates a new UiError instance with a new id', () {
      final error = UiError.generate('some error');
      expect(error.id, isNotNull);
      expect(error.error, 'some error');
    });

    test('copyWith creates a new UiError instance with modified values', () {
      const error = UiError(id: '123', error: 'some error');
      final newError = error.copyWith(id: '456', error: 'new error');
      expect(newError, isNot(error));
      expect(newError.id, '456');
      expect(newError.error, 'new error');
    });

    test('toString returns a string representation of the UiError instance', () {
      const error = UiError(id: '123', error: 'some error');
      expect(error.toString(), 'UiError(id: 123, error: some error)');
    });

    test('props returns a list of the UiError instance\'s properties', () {
      const error = UiError(id: '123', error: 'some error');
      expect(error.props, ['123', 'some error']);
    });
  });
}
