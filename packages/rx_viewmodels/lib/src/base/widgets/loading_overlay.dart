import 'package:flutter/material.dart';
import 'package:rx_viewmodels/src/base/base_viewmodel.dart';

/// The LoadingOverlay class is a widget that displays an overlay over its
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
abstract class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({
    required this.viewmodels,
    required this.child,
    required this.loadingWidget,
    this.animationDuration = const Duration(milliseconds: 400),
    this.isTransparent = false,
    this.padding,
    this.barrierColor,
    super.key,
  });

  final Widget child;

  final List<BaseViewmodel> viewmodels;

  final Widget loadingWidget;

  final Color? barrierColor;

  final Duration animationDuration;

  final EdgeInsets? padding;

  final bool isTransparent;

  Color _barrierColor(BuildContext context) =>
      isTransparent ? Colors.transparent : (barrierColor ?? Theme.of(context).colorScheme.onSurface.withOpacity(0.3));

  EdgeInsets get _padding => padding ?? EdgeInsets.zero;

  @protected
  @mustCallSuper
  Widget buildOverlay(BuildContext context, {required bool isLoading}) => Stack(
        children: [
          AbsorbPointer(
            absorbing: isLoading,
            child: Padding(padding: _padding, child: child),
          ),
          Positioned.fill(
            child: AnimatedSwitcher(
              duration: animationDuration,
              child: isLoading
                  ? SizedBox.expand(
                      child: DecoratedBox(
                        decoration: BoxDecoration(color: _barrierColor(context)),
                        child: loadingWidget,
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ),
        ],
      );
}
