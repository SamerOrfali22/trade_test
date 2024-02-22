enum FutureStatus { pending, rejected, fulfilled }

/// Base contract for any future with reactive programming approach.
///
/// [status] : call status of future.
/// [error] : error value when status is [FutureStatus.rejected].
/// [result] : result value when status is [FutureStatus.fulfilled].
abstract class BaseRxFuture<T> implements Future<T> {
  FutureStatus get status;

  dynamic get error;

  dynamic get result;

  bool get isPending => status == FutureStatus.pending;

  bool get isRejected => status == FutureStatus.rejected;

  bool get isFulfilled => status == FutureStatus.fulfilled;
}
