import 'package:get/get_rx/src/rx_types/rx_types.dart';

/// loading tracker support used as shared state between multiple mutators.
class RxLoadingCounter extends Rx<int> {
  RxLoadingCounter() : super(0);

  bool get isLoading => value > 0;

  void addLoader() => value += 1;

  void removeLoader() => value -= 1;
}
