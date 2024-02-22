import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:rx_viewmodels/src/base/base_viewmodel.dart';

/// initialize [BaseViewmodel] from [DI] taking in consideration
/// constructor params [viewmodelParam1] and [viewmodelParam2].
mixin ViewmodelInitializerMixin<T extends StatefulWidget, V extends BaseViewmodel> on State<T> {
  //
  late final V viewmodel = viewmodelAsParam ??
      GetIt.I<V>(
        param1: viewmodelParam1,
        param2: viewmodelParam2,
      );

  Object? get viewmodelParam1 => null;

  Object? get viewmodelParam2 => null;

  V? get viewmodelAsParam => null;

  @override
  void initState() {
    super.initState();

    /// register callback to be applied after first build.
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => viewmodel.onPostFrame(context),
    );
  }

  @override
  void dispose() {
    if (viewmodelAsParam == null) {
      viewmodel.dispose();
    }
    super.dispose();
  }
}
