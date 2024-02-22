import 'package:dart_kit/dart_kit.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../base_mocks.mocks.dart';

void main() {
  group('doOnDataResult', () {
    test('called once when success', () async {
      final mockCallback = MockCallbackVoid();
      when(mockCallback.call()).thenReturn(null);

      late final bool result;
      late final ResultOrigin origin;
      final future = Future.value(true.asDataResult(origin: ResultOrigin.local)).doOnDataResult((data) {
        result = data.value;
        origin = data.origin;
        mockCallback.call();
      });

      await future;

      expect(result, isTrue);
      expect(origin, equals(ResultOrigin.local));
      verify(mockCallback.call()).called(1);
    });

    test('not called when not success', () async {
      final mockCallback = MockCallbackVoid();
      when(mockCallback.call()).thenReturn(null);

      final errorFuture = Future.value(const Result.error(ResultOrigin.other, true)).doOnDataResult(
        (_) => mockCallback.call(),
      );

      final loadingFuture = Future.value(const Result.loading(ResultOrigin.other)).doOnDataResult(
        (_) => mockCallback.call(),
      );

      await loadingFuture;
      await errorFuture;
      verifyNever(mockCallback.call());
    });
  });

  group('doOnErrorResult', () {
    test('called once when error', () async {
      final mockCallback = MockCallbackVoid();
      when(mockCallback.call()).thenReturn(null);

      late final bool errorResult;
      late final ResultOrigin origin;
      final future = Future.value(const Result.error(ResultOrigin.local, true)).doOnErrorResult((error) {
        errorResult = error.error as bool;
        origin = error.origin;
        mockCallback.call();
      });

      await future;

      expect(errorResult, isTrue);
      expect(origin, equals(ResultOrigin.local));
      verify(mockCallback.call()).called(1);
    });

    test('not called when not error', () async {
      final mockCallback = MockCallbackVoid();
      when(mockCallback.call()).thenReturn(null);

      final dataFuture = Future.value(true.asDataResult()).doOnErrorResult(
        (_) => mockCallback.call(),
      );

      final loadingFuture = Future.value(const Result.loading(ResultOrigin.other)).doOnDataResult(
        (_) => mockCallback.call(),
      );

      await loadingFuture;
      await dataFuture;
      verifyNever(mockCallback.call());
    });
  });

  group('doOnLoadingResult', () {
    test('called once when loading', () async {
      final mockCallback = MockCallbackVoid();
      when(mockCallback.call()).thenReturn(null);

      late final ResultOrigin origin;
      final future = Future.value(const Result.loading(ResultOrigin.local)).doOnLoadingResult((loading) {
        origin = loading.origin;
        mockCallback.call();
      });

      await future;

      expect(origin, equals(ResultOrigin.local));
      verify(mockCallback.call()).called(1);
    });

    test('not called when not loading', () async {
      final mockCallback = MockCallbackVoid();
      when(mockCallback.call()).thenReturn(null);

      final dataFuture = Future.value(true.asDataResult()).doOnErrorResult(
        (_) => mockCallback.call(),
      );

      final errorFuture = Future.value(const Result.error(ResultOrigin.other, true)).doOnDataResult(
        (_) => mockCallback.call(),
      );

      await dataFuture;
      await errorFuture;
      verifyNever(mockCallback.call());
    });
  });
}
