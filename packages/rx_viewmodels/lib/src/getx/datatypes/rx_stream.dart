import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:rx_viewmodels/src/getx/getx_viewmodel.dart';
import 'package:rxdart/transformers.dart';

/// Getx version of reactive programming stream.
class RxStream<R> {
  RxStream([
    R? initial,
  ]) : _streamResult = _StreamResult(initial) {
    _streamResult.bindStream(_observe());
  }

  final StreamController<Stream<R>> _controller = StreamController<Stream<R>>();
  final _StreamResult _streamResult;

  R? get value => _streamResult.value;

  Stream<R> _observe() => _controller.stream.switchMap(
        (Stream<R> value) => value,
      );

  void call(Stream<R> stream) => _controller.add(stream);

  @mustCallSuper
  Future<void> dispose() async {
    _streamResult.close();
    await _controller.close();
  }

  void disposeBy(GetxViewmodel viewmodel) => viewmodel.addDisposer(dispose);
}

class _StreamResult<T> extends Rxn<T> {
  _StreamResult(super.initial);
}

extension StreamExt<T> on Stream<T> {
  RxStream<T> obs() => RxStream<T>()..call(this);
}
