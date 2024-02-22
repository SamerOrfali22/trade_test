import 'package:dart_kit/dart_kit.dart';
import 'package:rx_viewmodels/src/getx/datatypes/rx_stream.dart';
import 'package:rxdart/transformers.dart';

/// [RxStream] that hold value of [Result] class.
class RxResultStream<T> extends RxStream<Result<T>> {
  RxResultStream([
    Result<T>? initial,
    ResultOrigin initialOrigin = ResultOrigin.other,
  ]) : super(initial ?? Result<T>.loading(initialOrigin));

  @override
  void call(Stream<Result<T>> stream) => super.call(
        stream.distinctUntilDataChanged().onErrorReturnWith(
              (Object error, StackTrace stacktrace) => Result<T>.error(ResultOrigin.other, error, stacktrace),
            ),
      );

  @override
  Result<T> get value => super.value!;
}
