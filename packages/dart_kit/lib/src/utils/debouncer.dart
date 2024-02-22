import 'dart:async';

/// Debounce Strategy.
///
/// Debouncing is needed when there is a possibility of multiple calls
/// to a method being made within a short duration of each other,
/// and it's desireable that only the last of those calls actually invoke the target method.
class Debouncer {
  Debouncer({this.delay = const Duration(milliseconds: 500)});

  final Duration delay;
  Timer? _timer;

  /// wait for [delay] before call [action].
  void call(void Function() action) {
    _timer?.cancel();
    _timer = Timer(delay, action);
  }
}
