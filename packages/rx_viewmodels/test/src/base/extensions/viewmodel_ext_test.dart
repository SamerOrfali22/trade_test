import 'package:dart_kit/dart_kit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rx_viewmodels/src/base/extensions/viewmodel_ext.dart';
import 'package:rx_viewmodels/src/getx/getx_viewmodel.dart';

void main() {
  group('ViewmodelStreamExt', () {
    test('collectStatus adds loading and error listeners', () {
      var onStartLoadingCalled = false;
      var onStopLoadingCalled = false;
      var onCollectErrorCalled = false;

      final stream = Stream<Result<int>>.fromIterable([
        const Result<int>.loading(ResultOrigin.other),
        const Result<int>.data(ResultOrigin.other, 1),
        const Result<int>.error(ResultOrigin.other, 'an error'),
      ]);

      stream
          .collectStatus(
            onStartLoading: () => onStartLoadingCalled = true,
            onStopLoading: () => onStopLoadingCalled = true,
            onCollectError: (error) => onCollectErrorCalled = true,
          )
          .listen(
            (result) => result.map(
              onLoading: (onLoading) {
                expect(onStartLoadingCalled, isTrue);
                expect(onStopLoadingCalled, isFalse);
                expect(onCollectErrorCalled, isFalse);
              },
              onData: (onData) {
                expect(onStartLoadingCalled, isTrue);
                expect(onStopLoadingCalled, isTrue);
                expect(onCollectErrorCalled, isFalse);
              },
              onError: (onError) {
                expect(onStartLoadingCalled, isTrue);
                expect(onStopLoadingCalled, isTrue);
                expect(onCollectErrorCalled, isTrue);
              },
            ),
          );
    });

    test('collectStatusByViewmodel reflects changes to loading and error state', () {
      // Create a mock BaseViewmodel instance
      final viewmodel = MockBaseViewmodel();

      // Create a stream of Result<int> events
      final stream = Stream.fromIterable(
        [
          const Result<int>.loading(ResultOrigin.other),
          const Result<int>.data(ResultOrigin.other, 1),
          Result<int>.error(ResultOrigin.other, Exception()),
        ],
      );

      // Use the collectStatusByViewmodel extension method on the stream
      final resultStream = stream.collectStatusByViewmodel(viewmodel);

      // Verify that the correct methods are called on the mock viewmodel instance
      expect(viewmodel.isLoading, false);
      expect(viewmodel.uiError, null);

      resultStream.listen((result) {
        if (result is LoadingResult<int>) {
          expect(viewmodel.isLoading, true);
        } else if (result is DataResult<int>) {
          expect(viewmodel.isLoading, false);
          expect(viewmodel.uiError, null);
        } else if (result is ErrorResult<int>) {
          expect(viewmodel.isLoading, false);
          expect(viewmodel.uiError?.error, isA<Exception>());
        }
      });
    });

    test('collectStatusByViewmodel with collect loading only will not change error state', () {
      // Create a mock BaseViewmodel instance
      final viewmodel = MockBaseViewmodel();

      // Create a stream of Result<int> events
      final stream = Stream.fromIterable(
        [
          const Result<int>.loading(ResultOrigin.other),
          const Result<int>.data(ResultOrigin.other, 1),
          Result<int>.error(ResultOrigin.other, Exception()),
        ],
      );

      // Use the collectStatusByViewmodel extension method on the stream
      final resultStream = stream.collectStatusByViewmodel(viewmodel, collectError: false);

      // Verify that the correct methods are called on the mock viewmodel instance
      expect(viewmodel.isLoading, false);
      expect(viewmodel.uiError, null);

      resultStream.listen((result) {
        if (result is LoadingResult<int>) {
          expect(viewmodel.isLoading, true);
        } else if (result is DataResult<int>) {
          expect(viewmodel.isLoading, false);
          expect(viewmodel.uiError, null);
        } else if (result is ErrorResult<int>) {
          expect(viewmodel.isLoading, false);
          expect(viewmodel.uiError, null);
        }
      });
    });

    test('collectStatusByViewmodel with collect error only will not change loading state', () {
      // Create a mock BaseViewmodel instance
      final viewmodel = MockBaseViewmodel();

      // Create a stream of Result<int> events
      final stream = Stream.fromIterable(
        [
          const Result<int>.loading(ResultOrigin.other),
          const Result<int>.data(ResultOrigin.other, 1),
          Result<int>.error(ResultOrigin.other, Exception()),
        ],
      );

      // Use the collectStatusByViewmodel extension method on the stream
      final resultStream = stream.collectStatusByViewmodel(viewmodel, collectLoading: false);

      // Verify that the correct methods are called on the mock viewmodel instance
      expect(viewmodel.isLoading, false);
      expect(viewmodel.uiError, null);

      resultStream.listen((result) {
        if (result is LoadingResult<int>) {
          expect(viewmodel.isLoading, false);
        } else if (result is DataResult<int>) {
          expect(viewmodel.isLoading, false);
          expect(viewmodel.uiError, null);
        } else if (result is ErrorResult<int>) {
          expect(viewmodel.isLoading, false);
          expect(viewmodel.uiError?.error, isA<Exception>());
        }
      });
    });

    test('collectStatusByViewmodel without collecting any thing will not change error nor loading state', () {
      // Create a mock BaseViewmodel instance
      final viewmodel = MockBaseViewmodel();

      // Create a stream of Result<int> events
      final stream = Stream.fromIterable(
        [
          const Result<int>.loading(ResultOrigin.other),
          const Result<int>.data(ResultOrigin.other, 1),
          Result<int>.error(ResultOrigin.other, Exception()),
        ],
      );

      // Use the collectStatusByViewmodel extension method on the stream
      final resultStream = stream.collectStatusByViewmodel(viewmodel, collectLoading: false, collectError: false);

      // Verify that the correct methods are called on the mock viewmodel instance
      expect(viewmodel.isLoading, false);
      expect(viewmodel.uiError, null);

      resultStream.listen((result) {
        if (result is LoadingResult<int>) {
          expect(viewmodel.isLoading, false);
        } else if (result is DataResult<int>) {
          expect(viewmodel.isLoading, false);
          expect(viewmodel.uiError, null);
        } else if (result is ErrorResult<int>) {
          expect(viewmodel.isLoading, false);
          expect(viewmodel.uiError, null);
        }
      });
    });
  });

  group('ViewmodelFutureExt', () {
    test('collectStatus reflects changes to loading and error state', () async {
      // Create a mock BaseViewmodel instance
      final viewmodel = MockBaseViewmodel();

      // Create a stream of Result<int> events
      final future = Future<Result<int>>.value(const Result<int>.data(ResultOrigin.other, 1));

      // Use the collectStatus extension method on the future
      final collectedFuture = future.collectStatus(viewmodel);

      expect(viewmodel.isLoading, isTrue);
      expect(viewmodel.uiError, isNull);
      await collectedFuture;
      expect(viewmodel.isLoading, isFalse);
      expect(viewmodel.uiError, isNull);

      final errorFuture = Future<Result<int>>.value(Result<int>.error(ResultOrigin.other, Exception()));
      final collectedErrorFuture = errorFuture.collectStatus(viewmodel, collectLoading: true, collectError: true);

      expect(viewmodel.isLoading, isTrue);
      await collectedErrorFuture;
      expect(viewmodel.isLoading, isFalse);
      expect(viewmodel.uiError?.error, isA<Exception>());
    });

    test('collectStatus with collect loading only will not change error state', () async {
      // Create a mock BaseViewmodel instance
      final viewmodel = MockBaseViewmodel();

      final errorFuture = Future<Result<int>>.value(Result<int>.error(ResultOrigin.other, Exception()));
      final collectedErrorFuture = errorFuture.collectStatus(viewmodel, collectLoading: true, collectError: false);

      expect(viewmodel.isLoading, isTrue);
      await collectedErrorFuture;
      expect(viewmodel.isLoading, isFalse);
      expect(viewmodel.uiError, null);
    });

    test('collectStatus with collect error only will not change loading state', () async {
      // Create a mock BaseViewmodel instance
      final viewmodel = MockBaseViewmodel();

      final errorFuture = Future<Result<int>>.value(Result<int>.error(ResultOrigin.other, Exception()));
      final collectedErrorFuture = errorFuture.collectStatus(viewmodel, collectLoading: false, collectError: true);

      expect(viewmodel.isLoading, isFalse);
      await collectedErrorFuture;
      expect(viewmodel.isLoading, isFalse);
      expect(viewmodel.uiError?.error, isA<Exception>());
    });

    test('collectStatus without collecting any thing will not change error nor loading state', () async {
      // Create a mock BaseViewmodel instance
      final viewmodel = MockBaseViewmodel();

      final errorFuture = Future<Result<int>>.value(Result<int>.error(ResultOrigin.other, Exception()));
      final collectedErrorFuture = errorFuture.collectStatus(viewmodel, collectLoading: false, collectError: false);

      expect(viewmodel.isLoading, isFalse);
      await collectedErrorFuture;
      expect(viewmodel.isLoading, isFalse);
      expect(viewmodel.uiError, null);
    });
  });
}

class MockBaseViewmodel extends GetxViewmodel {
  @override
  String get loggerTag => 'MockBaseViewmodel';
}
