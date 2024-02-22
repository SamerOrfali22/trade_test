import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:rx_viewmodels/src/getx/datatypes/rx_result_stream.dart';

/// Self contained logic for success, load, error, and retry with animation
/// between transition, more like [StreamBuilder] but for [RxResultStream].
///
/// [stream] : RxResultStream to track.
/// [onData] : callback for data state of stream.
/// [onLoading] : callback for loading state.
/// [onError] : callback for error state of future.
/// [animationDuration] : duration of transition animation.
class GetxStreamBuilder<T> extends StatelessWidget {
  const GetxStreamBuilder({
    required this.stream,
    required this.onData,
    required this.onError,
    required this.onLoading,
    Key? key,
    this.animationDuration = const Duration(milliseconds: 500),
  }) : super(key: key);

  final RxResultStream<T> stream;
  final Widget Function(dynamic) onError;
  final Widget Function() onLoading;
  final Widget Function(ResultOrigin origin, T data) onData;
  final Duration animationDuration;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return AnimatedSwitcher(
        duration: animationDuration,
        child: stream.value.map(
          onLoading: (_) => onLoading(),
          onData: (data) => onData(data.origin, data.requireData()),
          onError: (error) => onError(error.error),
        ),
      );
    });
  }
}
