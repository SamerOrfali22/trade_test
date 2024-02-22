import 'package:flutter/material.dart';
import 'package:rx_viewmodels/src/base/data_types/base_rx_future.dart';

/// Self contained logic for success, load, error, and retry with animation
/// between transition, more like [FutureBuilder] but for [BaseRxFuture].
///
/// [future] : BaseRxFuture to track.
/// [onSuccess] : callback for success state of future.
/// [onLoading] : callback for loading state.
/// [onError] : callback for error state of future.
/// [animationDuration] : duration of transition animation.
abstract class BaseFutureBuilder<T> extends StatelessWidget {
  const BaseFutureBuilder({
    required this.future,
    required this.onSuccess,
    required this.onError,
    required this.onLoading,
    this.animationDuration = const Duration(milliseconds: 500),
    super.key,
  });

  final BaseRxFuture<T> future;
  final Widget Function(dynamic) onError;
  final Widget Function() onLoading;
  final Widget Function(T) onSuccess;
  final Duration animationDuration;

  @protected
  Widget buildFuture() {
    return AnimatedSwitcher(
      duration: animationDuration,
      child: future.isRejected
          ? onError(future.error)
          : future.isPending
              ? onLoading()
              : future.isFulfilled
                  ? onSuccess(future.result)
                  : const SizedBox.shrink(),
    );
  }
}
