import 'package:dart_kit/dart_kit.dart';
import 'package:rx_viewmodels/src/base/base_viewmodel.dart';

extension ViewmodelStreamExt<T> on Stream<Result<T>> {
  /// map [Result] events to ui events of [StartLoading, StopLoading,onError]
  /// and apply appropriate callback for each ui event.
  Stream<Result<T>> collectStatus({
    void Function()? onStartLoading,
    void Function()? onStopLoading,
    void Function(Object)? onCollectError,
  }) {
    final bool collectLoading = onStartLoading != null && onStopLoading != null;
    final bool collectError = onCollectError != null;

    Stream<Result<T>>? resultStream;

    if (collectLoading) {
      resultStream = (resultStream ?? this)
          .doOnLoadingResult((_) => onStartLoading())
          .doOnDataResult((_) => onStopLoading())
          .doOnErrorResult((_) => onStopLoading());
    }

    if (collectError) {
      resultStream = (resultStream ?? this).doOnErrorResult((it) {
        onCollectError(it.error);
        return it;
      });
    }

    return resultStream ?? this;
  }

  /// map [Result] events type to [viewmodel] rx states.
  ///
  /// if [collectLoading] is true, each [LoadingResult] event will change
  /// [viewmodel.isLoading] to true.
  /// if [collectError] is true, each [ErrorResult] event will change
  /// [viewmodel.uiError]  to thrown error.
  Stream<Result<T>> collectStatusByViewmodel(
    BaseViewmodel viewmodel, {
    bool collectLoading = true,
    bool collectError = true,
  }) =>
      collectStatus(
        onCollectError: collectError ? (it) => viewmodel.emitUiError(it) : null,
        onStartLoading: collectLoading ? () => viewmodel.startLoading() : null,
        onStopLoading: collectLoading ? () => viewmodel.stopLoading() : null,
      );
}

extension ViewmodelFutureExt<T> on Future<Result<T>> {
  /// map [Result] events type to [viewmodel] rx states.
  ///
  /// if [collectLoading] is true, each [LoadingResult] event will change
  /// [viewmodel.isLoading] to true.
  /// if [collectError] is true, each [ErrorResult] event will change
  /// [viewmodel.uiError]  to thrown error.
  /// [shouldIgnoreError] : the [viewmodel] will not emit UI error if return `true`.
  Future<Result<T>> collectStatus(
    BaseViewmodel viewmodel, {
    bool collectLoading = true,
    bool collectError = true,
    bool Function(dynamic)? shouldIgnoreError,
  }) {
    bool shouldUpdateUiError(Object error) =>
        collectError && (shouldIgnoreError == null || shouldIgnoreError(error).isFalse);

    if (!collectLoading && !collectError) {
      return this;
    }

    if (collectLoading) {
      viewmodel.startLoading();
    }

    return then(
      (it) => it.map(
        onLoading: (it) => it,
        onData: (it) {
          if (collectLoading) {
            viewmodel.stopLoading();
          }
          return it;
        },
        onError: (it) {
          if (shouldUpdateUiError(it.error)) {
            viewmodel.emitUiError(it.error);
          }
          if (collectLoading) {
            viewmodel.stopLoading();
          }
          return it;
        },
      ),
    ).catchError((ex, st) {
      if (shouldUpdateUiError(ex)) {
        viewmodel
          ..e('viewmodel collect status error', ex, st)
          ..emitUiError(ex);
      }

      if (collectLoading) {
        viewmodel.stopLoading();
      }

      return Result<T>.error(ResultOrigin.other, ex, st);
    });
  }
}

extension ViewmodelResultFutureExt<T> on Future<T> {
  /// map [Future] events type to [viewmodel] rx states.
  ///
  /// if [collectLoading] is true, each [LoadingResult] event will change
  /// [viewmodel.isLoading] to true.
  /// if [collectError] is true, each [ErrorResult] event will change
  /// [viewmodel.uiError]  to thrown error.
  Future<T> collectStatus(
    BaseViewmodel viewmodel, {
    bool collectLoading = true,
    bool collectError = true,
  }) {
    if (!collectLoading && !collectError) {
      return this;
    }

    if (collectLoading) {
      viewmodel.startLoading();
    }

    return catchError((error) {
      if (collectError) {
        viewmodel.emitUiError(error);
      }

      throw error;
    }).whenComplete(() {
      if (collectLoading) {
        viewmodel.stopLoading();
      }
    });
  }
}
