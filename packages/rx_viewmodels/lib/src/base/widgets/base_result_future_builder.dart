import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/material.dart';
import 'package:rx_viewmodels/src/base/data_types/base_rx_future.dart';
import 'package:rx_viewmodels/src/base/widgets/base_future_builder.dart';

/// Self contained logic for success, load, error, and retry with animation
/// between transition, more like [FutureBuilder] but for [BaseRxFuture].
///
/// [future] : BaseRxFuture to track.
/// [onSuccess] : callback for success state of future.
/// [onLoading] : callback for loading state.
/// [onError] : callback for error state of future.
/// [animationDuration] : duration of transition animation.
abstract class BaseResultFutureBuilder<T> extends BaseFutureBuilder<Result<T>> {
  BaseResultFutureBuilder({
    required BaseRxFuture<Result<T>> future,
    required Widget Function(T) onSuccess,
    required super.onError,
    required super.onLoading,
    super.animationDuration,
    super.key,
  }) : super(future: future, onSuccess: (result) => onSuccess(result.requireData()));
}
