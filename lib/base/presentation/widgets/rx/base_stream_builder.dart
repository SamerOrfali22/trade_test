import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:rx_viewmodels/viewmodel.dart';
import 'package:weather_app/base/presentation/widgets/error_view.dart';
import 'package:weather_app/base/presentation/widgets/loader.dart';
import 'package:weather_app/base/utils/ui_utils/animations/animation_duration.dart';

/// A stateless widget that displays the data provided by a [RxResultStream].
///
/// The [BaseStreamBuilder] widget allows for easy handling of asynchronous data,
/// displaying loading, error, and success states through the provided callbacks.
class BaseStreamBuilder<T> extends StatelessWidget {
  /// Creates a new [BaseStreamBuilder] instance.
  ///
  /// The required [stream] parameter is the [RxResultStream] that provides the data for this widget.
  /// The required [onData] parameter is a callback that returns a widget to display the successful data.
  /// The required [onRetry] parameter is a callback to be called when the retry button is pressed in the error view.
  /// The optional [animationDuration] parameter is the duration of the loading animation.
  /// It defaults to [AnimationDuration.MEDIUM].
  /// The optional [onError] parameter is a callback that returns a widget to display when an error occurs.
  /// It defaults to displaying the error message and a retry button.
  /// The optional [onLoading] parameter is a callback that returns a widget to display while waiting for the stream
  /// to provide data. It defaults to a centered [Loader] widget.
  /// The optional [customDuration] parameter is a custom duration for the loading animation.
  /// It overrides [animationDuration] if provided.
  /// The optional [key] parameter is the key for this widget.
  const BaseStreamBuilder({
    required this.stream,
    required this.onData,
    required this.onRetry,
    this.animationDuration = AnimationDuration.MEDIUM,
    this.onError,
    this.onLoading,
    this.customDuration,
    super.key,
  });

  /// The [RxResultStream] that provides the data for this widget.
  final RxResultStream<T> stream;

  /// A callback to be called when the retry button is pressed in the error view.
  final VoidCallback onRetry;

  /// A callback that returns a widget to display the successful data.
  final Widget Function(ResultOrigin origin, T data) onData;

  /// A callback that returns a widget to display when an error occurs.
  ///
  /// If not provided, it defaults to displaying the error message and a retry button.
  final Widget Function(dynamic)? onError;

  /// A callback that returns a widget to display while waiting for the stream to provide data.
  ///
  /// If not provided, it defaults to a centered [Loader] widget.
  final Widget Function()? onLoading;

  /// The duration of the loading animation.
  ///
  /// It defaults to [AnimationDuration.MEDIUM].
  final AnimationDuration animationDuration;

  /// A custom duration for the loading animation.
  ///
  /// It overrides [animationDuration] if provided.
  final Duration? customDuration;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return AnimatedSwitcher(
        duration: customDuration ?? animationDuration.duration,
        child: stream.value.map(
          onLoading: (_) => onLoading?.call() ?? const Center(child: Loader()),
          onData: (data) => onData(data.origin, data.requireData()),
          onError: (error) => onError?.call(error) ?? ErrorView(message: error.toString(), onAction: onRetry),
        ),
      );
    });
  }
}
