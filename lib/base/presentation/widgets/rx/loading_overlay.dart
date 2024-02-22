import 'package:flutter/material.dart';
import 'package:rx_viewmodels/viewmodel.dart';
import 'package:weather_app/base/presentation/viewmodels/base_viewmodel.dart';
import 'package:weather_app/base/presentation/widgets/loader.dart';
import 'package:weather_app/base/utils/ui_utils/animations/animation_duration.dart';

/// Widget that displays an overlay over its child widget when any of the specified viewmodels are loading.
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
/// [animationDuration] : the  duration of the loading animation. It defaults to [AnimationDuration.MEDIUM].
/// [customDuration] : optional parameter is a custom duration for the loading animation.
/// It overrides [animationDuration] if provided.
class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({
    required this.child,
    required this.viewmodels,
    this.loadingWidget,
    this.barrierColor,
    this.isTransparent = false,
    this.padding,
    this.animationDuration = AnimationDuration.MEDIUM,
    this.customDuration,
    super.key,
  });

  final Widget child;
  final List<BaseViewmodel> viewmodels;

  final Widget? loadingWidget;
  final Color? barrierColor;
  final AnimationDuration animationDuration;
  final EdgeInsets? padding;
  final bool isTransparent;
  final Duration? customDuration;

  @override
  Widget build(BuildContext context) {
    return GetxLoadingOverlay(
      viewmodels: viewmodels,
      loadingWidget: loadingWidget ?? const Center(child: Loader()),
      animationDuration: customDuration ?? animationDuration.duration,
      barrierColor: barrierColor,
      isTransparent: isTransparent,
      padding: padding,
      child: child,
    );
  }
}
