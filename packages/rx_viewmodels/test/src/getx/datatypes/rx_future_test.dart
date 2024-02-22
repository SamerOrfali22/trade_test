import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:rx_viewmodels/src/base/data_types/base_rx_future.dart';
import 'package:rx_viewmodels/src/getx/datatypes/rx_future.dart';

void main() {
  group('RxFuture', () {
    test('status is initially pending', () {
      final future = RxFuture();
      expect(future.status, equals(FutureStatus.pending));
    });

    test('RxFuture.value creates a fulfilled future', () {
      final future = RxFuture.value(1);
      expect(future.status, equals(FutureStatus.fulfilled));
      expect(future.result, equals(1));
      expect(future.value, equals(1));
    });

    test('RxFuture.error creates a rejected future', () {
      final future = RxFuture.error('error');
      expect(future.status, equals(FutureStatus.rejected));
      expect(future.error, equals('error'));
    });

    test('replace updates future and keeps result', () {
      final future1 = RxFuture.value(1);
      final future2 = future1.replace(Future.value(2));
      expect(future2.status, equals(FutureStatus.fulfilled));
      expect(future2.result, equals(1));
      expect(future2.value, equals(1));
    });

    test('then creates a new future', () {
      final future = RxFuture.value(1).then((value) => value + 1);
      expect(future.status, equals(FutureStatus.pending));
    });

    test('catchError creates a new future', () {
      final future = RxFuture.error('error').catchError((error) => 'caught');
      expect(future.status, equals(FutureStatus.pending));
    });

    test('timeout creates a new future', () {
      final future = RxFuture.value(1).timeout(Duration.zero);
      expect(future.status, equals(FutureStatus.pending));
    });

    test('whenComplete creates a new future', () {
      final future = RxFuture.value(1).whenComplete(() {});
      expect(future.status, equals(FutureStatus.pending));
    });

    test('asStream returns a stream', () {
      final future = RxFuture.value(1);
      expect(future.asStream(), isA<Stream<int>>());
    });

    test('call updates future', () async {
      final future = RxFuture<int>();

      future(Future.value(1));

      expect(future.status, equals(FutureStatus.pending));

      await future;

      expect(future.status, equals(FutureStatus.fulfilled));

      future(Future.error(Exception()));

      await expectLater(() async => await future, throwsA(isA<Exception>()));
      expect(future.status, FutureStatus.rejected);
    });
  });
}
