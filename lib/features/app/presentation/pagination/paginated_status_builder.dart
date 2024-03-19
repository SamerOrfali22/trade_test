import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:weather_app/base/utils/ui_utils/animations/animation_duration.dart';
import 'package:weather_app/features/app/presentation/pagination/pagination_status_mixin.dart';

typedef PaginatedStatusCallback = Widget Function();

class PaginatedStatusBuilder extends StatelessWidget {
  const PaginatedStatusBuilder({
    super.key,
    required this.viewmodel,
    this.duration = AnimationDuration.MEDIUM,
    this.customDuration,
    this.onCompleted,
    this.onNoItemsFound,
    this.onLoadingFirstPage,
    this.onOngoing,
    this.onFirstPageError,
    this.onSubsequentPageError,
  });

  final PaginationStatusMixin viewmodel;
  final Duration? customDuration;
  final AnimationDuration duration;

  // callbacks
  final PaginatedStatusCallback? onCompleted;
  final PaginatedStatusCallback? onNoItemsFound;
  final PaginatedStatusCallback? onLoadingFirstPage;
  final PaginatedStatusCallback? onOngoing;
  final PaginatedStatusCallback? onFirstPageError;
  final PaginatedStatusCallback? onSubsequentPageError;

  Duration get _duration => customDuration ?? duration.duration;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final status = viewmodel.paginationStatus;
      return AnimatedSwitcher(
        duration: _duration,
        child: _buildChild(context, status.value),
      );
    });
  }

  Widget _buildChild(BuildContext context, PagingStatus status) {
    switch (status) {
      case PagingStatus.completed:
        return onCompleted?.call() ?? const SizedBox.shrink();

      case PagingStatus.noItemsFound:
        return onNoItemsFound?.call() ?? const SizedBox.shrink();

      case PagingStatus.loadingFirstPage:
        return onLoadingFirstPage?.call() ?? const SizedBox.shrink();

      case PagingStatus.ongoing:
        return onOngoing?.call() ?? const SizedBox.shrink();

      case PagingStatus.firstPageError:
        return onFirstPageError?.call() ?? const SizedBox.shrink();

      case PagingStatus.subsequentPageError:
        return onSubsequentPageError?.call() ?? const SizedBox.shrink();
    }
  }
}
