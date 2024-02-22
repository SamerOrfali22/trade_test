import 'dart:async';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:rx_viewmodels/src/base/data_types/base_rx_future.dart';
import 'package:rx_viewmodels/src/getx/getx_viewmodel.dart';

/// Getx version of reactive programming future.
class RxFuture<T> extends BaseRxFuture<T> {
  /// Create a new observable future that tracks the state of the provided future.
  RxFuture([Future<T>? initFuture])
      : this._(
          initFuture,
          FutureStatus.pending,
          null,
        );

  /// Create a new future that is completed with a value.
  ///
  /// [status] is immediately [FutureStatus.fulfilled].
  RxFuture.value(T value) : this._(Future.value(value), FutureStatus.fulfilled, value);

  /// Create a new future that is completed with an error.
  ///
  /// [status] is immediately [FutureStatus.rejected].
  RxFuture.error(Object error) : this._(Future.error(error), FutureStatus.rejected, error);

  RxFuture._(
    Future<T>? initFuture,
    FutureStatus initialStatus,
    dynamic initialResult,
  ) : _future = Rx(_FutureResult(initFuture, initialResult, initialStatus));

  Rx<_FutureResult<T>> _future;

  @override
  FutureStatus get status => _future.value.status;

  @override
  dynamic get error => status == FutureStatus.rejected ? _future.value.result : null;

  @override
  dynamic get result => _future.value.result;

  T? get value => _future.value.result as T?;

  /// Returns a new future that starts with the [status] and [result] of this.
  ///
  /// The [status] and [result] changes when the provided future completes.
  /// Useful when you don't want to clear the result of the previous operation while
  /// executing the new operation.
  RxFuture<T> replace(Future<T> nextFuture) => RxFuture<T>._(
        nextFuture,
        status,
        result,
      );

  @override
  RxFuture<T> catchError(
    Function onError, {
    bool Function(Object error)? test,
  }) =>
      RxFuture._(
        _future.value.future!.catchError(onError, test: test),
        FutureStatus.pending,
        null,
      );

  @override
  RxFuture<R> then<R>(
    FutureOr<R> Function(T value) onValue, {
    Function? onError,
  }) =>
      RxFuture._(
        _future.value.future!.then(onValue, onError: onError),
        FutureStatus.pending,
        null,
      );

  @override
  RxFuture<T> timeout(
    Duration timeLimit, {
    FutureOr<T> Function()? onTimeout,
  }) =>
      RxFuture._(
        _future.value.future!.timeout(timeLimit, onTimeout: onTimeout),
        FutureStatus.pending,
        null,
      );

  @override
  RxFuture<T> whenComplete(FutureOr Function() action) => RxFuture._(
        _future.value.future!.whenComplete(action),
        FutureStatus.pending,
        null,
      );

  @override
  Stream<T> asStream() => _future.value.future!.asStream();

  void call(Future<T> future) {
    _future.update((val) {
      val?.future = future;
      val?.value = FutureStatus.pending;
    });
    _future.value.updateFuture();
  }

  void disposeBy(GetxViewmodel viewmodel) => viewmodel.addRx(_future);

  void reset() {
    _future = Rx(_FutureResult(null, null, FutureStatus.pending));
  }
}

class _FutureResult<T> extends Rx<FutureStatus> {
  _FutureResult(
    this.future,
    dynamic initialResult,
    FutureStatus initialStatus,
  )   :

        //  _status = initialStatus,
        _result = initialResult,
        super(initialStatus) {
    updateFuture();
  }

  Future<T>? future;

  // FutureStatus _status;
  dynamic _result;

  FutureStatus get status => value;

  dynamic get result => _result;

  void _fulfill(T result) {
    value = FutureStatus.fulfilled;
    _result = result;
  }

  void _reject(dynamic error) {
    value = FutureStatus.rejected;
    _result = error;
  }

  void updateFuture() {
    if (future != null) {
      future!.then(_fulfill, onError: _reject);
    }
  }
}
