import 'dart:async';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:rxdart/subjects.dart';
import 'package:rxdart/transformers.dart';

/// Getx version of reactive programming BehaviorSubject stream.
class _StreamSubjectResult<T> extends Rxn<T> {
  _StreamSubjectResult(super.initial);
}

class RxSubjectStream<P, R> {
  RxSubjectStream(
    this._observableCreator, [
    R? initial,
  ]) : _streamResult = _StreamSubjectResult(initial) {
    _streamResult.bindStream(_observe());
  }

  final BehaviorSubject<P> _controller = BehaviorSubject<P>();
  final Stream<R> Function(P) _observableCreator;
  final _StreamSubjectResult _streamResult;

  R? get value => _streamResult.value;

  Stream<R> _observe() => _controller.switchMap(
        (P value) => _observableCreator(value),
      );

  void call(P params) => _controller.add(params);

  Future<void> dispose() => _controller.close();
}
