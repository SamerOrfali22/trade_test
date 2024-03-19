import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:weather_app/features/app/presentation/pagination/viewmodel_future_pager_mixin.dart';

/// A mixin that adds a [ValueStream] of [PagingStatus] to a [PaginationMixin].
///
/// The mixin listens to [PaginationMixin] events and updates its status
/// accordingly. It provides a [paginationStatus] getter that returns the
/// current status as a [ValueStream] of [PagingStatus].
mixin PaginationStatusMixin<T> on ViewmodelFuturePagerMixin<T> {
  Rx<PagingStatus> get paginationStatus => _statusListener;

  /// By default, the [PagingController] listeners will only be active when [PagedListView] is using it.
  /// by enable this flag, no need for UI existing.
  bool get hardPaginationStatusNotify => false;

  /// You can customize which status updates to emit by overriding the
  List<PagingStatus> get allowedPaginationStatus => PagingStatus.values;

  final Rx<PagingStatus> _statusListener = Rx<PagingStatus>(PagingStatus.loadingFirstPage);

  /// method to enable the status listener:
  void enableStatusListener() => pagingController.addStatusListener(_updateStatus);

  @override
  void whenStartFetching(int pageKey) {
    if (hardPaginationStatusNotify && pageKey == 1) {
      _updateStatus(PagingStatus.loadingFirstPage);
    } else if (hardPaginationStatusNotify && pageKey != 1) {
      _updateStatus(PagingStatus.ongoing);
    }
    super.whenStartFetching(pageKey);
  }

  @override
  void whenFirstPageFetchError(PagingState<int, T> state) {
    if (hardPaginationStatusNotify) {
      _updateStatus(PagingStatus.firstPageError);
    }
    super.whenFirstPageFetchError(state);
  }

  @override
  void whenNewPageFetchError(PagingState<int, T> state) {
    if (hardPaginationStatusNotify) {
      _updateStatus(PagingStatus.subsequentPageError);
    }
    super.whenNewPageFetchError(state);
  }

  @override
  void whenSuccessFirstPageFetch(PagingState<int, T> state) {
    if (hardPaginationStatusNotify) {
      _updateStatus(PagingStatus.completed);
    }
    super.whenSuccessFirstPageFetch(state);
  }

  @override
  void whenSuccessNewPageFetch(PagingState<int, T> state) {
    if (hardPaginationStatusNotify) {
      _updateStatus(PagingStatus.completed);
    }
    super.whenSuccessNewPageFetch(state);
  }

  void _updateStatus(PagingStatus status) {
    if (allowedPaginationStatus.contains(status)) {
      _statusListener(status);
    }
  }

  @override
  void dispose() {
    _statusListener.close();
    super.dispose();
  }
}
