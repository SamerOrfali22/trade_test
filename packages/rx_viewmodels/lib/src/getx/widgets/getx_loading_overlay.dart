import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:rx_viewmodels/src/base/widgets/loading_overlay.dart';

/// The GetxLoadingOverlay class is a widget that displays an overlay over its
/// child widget when any of the specified viewmodels are loading.
///
/// [viewmodels] : a list of viewmodels whose isLoading property will be checked
/// to determine whether the overlay should be displayed.
/// [child] : the child widget that the overlay will be displayed on top of.
/// [loadingWidget] : the widget that will be displayed as the loading indicator.
/// [animationDuration] : the duration of the animation when the overlay is
/// displayed or hidden.
/// [isTransparent] : a flag indicating whether the overlay should be
///  transparent.
/// [padding] : needed padding around protected area.
/// [barrierColor] :  the color of the barrier that will be displayed behind
/// the loading widget.
///
/// The GetxLoadingOverlay class uses the Obx widget to rebuild the overlay
/// whenever the isLoading status of the viewmodels changes.
/// This allows the overlay to be displayed or hidden as needed.
class GetxLoadingOverlay extends LoadingOverlay {
  const GetxLoadingOverlay({
    required super.viewmodels,
    required super.child,
    required super.loadingWidget,
    super.key,
    super.isTransparent,
    super.padding,
    super.barrierColor,
    super.animationDuration,
  });

  @override
  Widget build(BuildContext context) => Obx(() => buildOverlay(
        context,
        isLoading: viewmodels.any((it) => it.isLoading),
      ));
}
