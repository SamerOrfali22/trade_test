import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:rx_viewmodels/viewmodel.dart';
import 'package:weather_app/base/presentation/widgets/base_snackbar.dart';
import 'package:weather_app/base/utils/ui_utils/mixins/context_state_mixin.dart';

/// Base class for pages in the app.
abstract class BasePage<T extends StatefulWidget, V extends GetxViewmodel> extends GetxPage<T, V>
    with ContextStateMixin {
  bool get removeSplashOnFirstFrame => false;

  @override
  void initState() {
    super.initState();
    if (removeSplashOnFirstFrame) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        FlutterNativeSplash.remove();
      });
    }
  }

  /// This method is called when a general error occurs in the app.
  /// The default implementation shows a snackbar with the error message.
  @override
  void onGeneralError(UiError error) {
    ScaffoldMessenger.of(context).showSnackBar(
      BaseSnackBar(message: error.error.toString(), type: SnackBarType.Error),
    );
  }
}
