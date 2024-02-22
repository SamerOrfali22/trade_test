import 'package:flutter_test/flutter_test.dart';
import 'package:rx_viewmodels/src/getx/datatypes/rx_loading_counter.dart';

void main() {
  group('RxLoadingCounter', () {
    test('isLoading returns true when there are loaders', () {
      final counter = RxLoadingCounter()..addLoader();
      expect(counter.isLoading, isTrue);
    });

    test('isLoading returns false when there are no loaders', () {
      final counter = RxLoadingCounter();
      expect(counter.isLoading, isFalse);
    });

    test('addLoader increases the loader count', () {
      final counter = RxLoadingCounter()..addLoader();
      expect(counter.value, 1);

      counter.addLoader();
      expect(counter.value, 2);
    });

    test('removeLoader decreases the loader count', () {
      final counter = RxLoadingCounter()
        ..addLoader()
        ..addLoader();
      expect(counter.value, 2);
      expect(counter.isLoading, isTrue);

      counter.removeLoader();
      expect(counter.value, 1);
      expect(counter.isLoading, isTrue);

      counter.removeLoader();
      expect(counter.value, 0);
      expect(counter.isLoading, isFalse);
    });
  });
}
