import 'package:flutter/material.dart';
import 'package:rx_viewmodels/viewmodel.dart';
import 'package:weather_app/base/presentation/widgets/error_view.dart';
import 'package:weather_app/base/presentation/widgets/loader.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/base/utils/localizations_utils/error_translator.dart';
import 'package:weather_app/base/utils/ui_utils/animations/animation_duration.dart';

/// A stateless widget that displays the data provided by a [RxFuture].
///
/// The [BaseFutureBuilder] widget allows for easy handling of asynchronous data,
/// displaying loading, error, and success states through the provided callbacks.
class BaseFutureBuilder<T> extends StatelessWidget {
  /// Creates a new [BaseFutureBuilder] instance.
  ///
  /// The required [future] parameter is the [RxFuture] that provides the data for this widget.
  /// The required [onSuccess] parameter is a callback that returns a widget to display the successful data.
  /// The required [onRetry] parameter is a callback to be called when the retry button is pressed in the error view.
  /// The optional [key] parameter is the key for this widget.
  /// The optional [animationDuration] parameter is the duration of the loading animation.
  /// It defaults to [AnimationDuration.MEDIUM].
  /// The optional [onError] parameter is a callback that returns a widget to display when an error occurs.
  /// It defaults to displaying the error message and a retry button.
  /// The optional [onLoading] parameter is a callback that returns a widget to display while waiting for the future
  /// to complete. It defaults to a centered [Loader] widget.
  /// The optional [customDuration] parameter is a custom duration for the loading animation.
  /// It overrides [animationDuration] if provided.
  const BaseFutureBuilder({
    required this.future,
    required this.onSuccess,
    required this.onRetry,
    super.key,
    this.animationDuration = AnimationDuration.MEDIUM,
    this.onError,
    this.onLoading,
    this.customDuration,
  });

  /// The [RxFuture] that provides the data for this widget.
  final RxFuture<T> future;

  /// The [RxFuture] that provides the data for this widget.
  final VoidCallback onRetry;

  /// A callback that returns a widget to display the successful data.
  final Widget Function(T) onSuccess;

  /// A callback that returns a widget to display when an error occurs.
  ///
  /// If not provided, it defaults to displaying the error message and a retry button.
  final Widget Function(dynamic)? onError;

  /// A callback that returns a widget to display while waiting for the future to complete.
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
    return GetxFutureBuilder(
      future: future,
      onSuccess: onSuccess,
      onError: onError ?? (error) => ErrorView(message: ErrorTranslator.translate(error), onAction: onRetry),
      onLoading: () => Center(child: Loader(color: context.colors.primary)),
      animationDuration: customDuration ?? animationDuration.duration,
    );
  }
}
