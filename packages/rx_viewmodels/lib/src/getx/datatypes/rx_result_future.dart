import 'package:dart_kit/dart_kit.dart';
import 'package:rx_viewmodels/src/base/data_types/base_rx_future.dart';
import 'package:rx_viewmodels/src/getx/datatypes/rx_future.dart';

/// [RxFuture] that hold value of [Result] class.
class RxResultFuture<T> extends RxFuture<Result<T>> {
  @override
  FutureStatus get status {
    switch (super.status) {
      case FutureStatus.pending:
      case FutureStatus.rejected:
        return super.status;

      case FutureStatus.fulfilled:
        return (result as Result<T>).map(
          onLoading: (_) => FutureStatus.pending,
          onData: (_) => FutureStatus.fulfilled,
          onError: (_) => FutureStatus.rejected,
        );
    }
  }

  @override
  dynamic get error {
    if (status != FutureStatus.rejected) {
      return null;
    }
    return super.result is ErrorResult<T> ? super.result.error : super.error;
  }
}
