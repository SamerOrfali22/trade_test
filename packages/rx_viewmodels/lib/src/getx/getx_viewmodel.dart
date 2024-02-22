import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rx_viewmodels/src/base/base_viewmodel.dart';
import 'package:rx_viewmodels/src/getx/datatypes/rx_loading_counter.dart';
import 'package:rx_viewmodels/src/getx/datatypes/rx_ui_error_manager.dart';
import 'package:rx_viewmodels/viewmodel.dart';

/// abstract class for Getx Viewmodel.
/// The GetxViewmodel class has several responsibilities:
/// 1) manages a loading counter using the RxLoadingCounter class to track
/// whether the viewmodel is currently loading data.
/// 2) manages UI errors using the RxUiErrorManager class,
/// which allows it to emit and clear UI errors.
/// 3) disposing resources, such as Rx observables and Workers.
///
/// It defines an onInit method that is called when the viewmodel is initialized
/// and an onPostFrame method that is called after the first frame is rendered.

abstract class GetxViewmodel extends GetxController with DisposersMixin, Loggable implements BaseViewmodel {
  GetxViewmodel() {
    onInit();
  }

  @override
  @mustCallSuper
  void onInit() {
    super.onInit();
  }

  @override
  @mustCallSuper
  void onPostFrame(BuildContext context) {}

  late final _loadingCounter = RxLoadingCounter()..disposeBy(this);

  @override
  bool get isLoading => _loadingCounter.isLoading;

  @override
  void startLoading() => _loadingCounter.addLoader();

  @override
  void stopLoading() => _loadingCounter.removeLoader();

  late final errorManager = RxUiErrorManager()..disposeBy(this);

  @override
  UiError? get uiError => errorManager.uiError;

  @override
  void clearUiError(String id) => errorManager.clearUiError(id);

  @override
  void emitUiError(Object error) {
    i('onError event: ${error.toString()}');
    errorManager.emitError(UiError.generate(error));
  }

  void addRx<T>(Rx<T> rx) => addDisposer(rx.close);

  void addRxs(List<Rx> rxs) => addDisposers(rxs.map((it) => it.close).toList());

  void addWorker(Worker worker) => addDisposer(worker.call);

  void addWorkers(List<Worker> workers) => addDisposers(
        workers.map((it) => it.call).toList(),
      );

  late final Rxn<ContextHandler> contextHandler = Rxn()..disposeBy(this);

  void getContext(ContextHandler handler) => contextHandler(handler);

  @override
  @mustCallSuper
  void dispose() {
    disposeDisposers();
    super.dispose();
  }
}
