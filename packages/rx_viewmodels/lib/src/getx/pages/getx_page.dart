import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:rx_viewmodels/src/base/mixins/disposer_mixin.dart';
import 'package:rx_viewmodels/src/base/pages/base_page.dart';
import 'package:rx_viewmodels/src/base/ui_error.dart';
import 'package:rx_viewmodels/src/getx/getx_viewmodel.dart';

typedef ContextHandler = void Function(BuildContext);

/// base getx view model page will create [GetxViewmodel] with support to customize
/// initializer with override to factory param [viewmodelParam1] and
/// [viewmodelParam2] and provide getx error handling strategy and
/// add [workers] pool.
abstract class GetxPage<T extends StatefulWidget, V extends GetxViewmodel> extends BasePage<T, V>
    with DisposersMixin, Loggable {
  @override
  void setupErrorHandler(void Function(UiError? uiError) handler) {
    final errorWorker = ever(viewmodel.errorManager, handler);
    addDisposer(errorWorker.call);
  }

  @override
  void initState() {
    super.initState();
    final contextHandlerWorker = ever(
      viewmodel.contextHandler,
      (ContextHandler? handler) {
        if (handler != null) {
          handler(context);
          viewmodel.contextHandler(null);
        }
      },
    );
    addDisposer(contextHandlerWorker.call);
  }

  @override
  void dispose() {
    disposeDisposers();
    super.dispose();
  }
}
