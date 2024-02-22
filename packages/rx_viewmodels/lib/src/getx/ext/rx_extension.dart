import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:rx_viewmodels/src/getx/getx_viewmodel.dart';

extension RxExt<T> on Rx<T> {
  /// clean this Rx resources when [viewmodel.dispose] is called.
  void disposeBy(GetxViewmodel viewmodel) => viewmodel.addRx(this);
}

extension RxNotifyManagerExt<T> on NotifyManager<T> {
  /// clean this Rx resources when [viewmodel.dispose] is called.
  void disposeBy(GetxViewmodel viewmodel) => viewmodel.addDisposer(close);
}
