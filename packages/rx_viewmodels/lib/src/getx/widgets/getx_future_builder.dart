import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rx_viewmodels/src/base/widgets/base_future_builder.dart';
import 'package:rx_viewmodels/src/getx/datatypes/rx_future.dart';

/// Self contained logic for success, load, error, and retry with animation
/// between transition, more like [FutureBuilder] but for [BaseRxFuture].
///
/// [future] : BaseRxFuture to track.
/// [onSuccess] : callback for success state of future.
/// [onLoading] : callback for loading state.
/// [onError] : callback for error state of future.
/// [animationDuration] : duration of transition animation.
class GetxFutureBuilder<T> extends BaseFutureBuilder<T> {
  const GetxFutureBuilder({
    required RxFuture<T> future,
    required super.onSuccess,
    required super.onError,
    required super.onLoading,
    super.animationDuration,
    super.key,
  }) : super(future: future);

  @override
  Widget build(BuildContext context) => Obx(() => buildFuture());
}
