import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

/// Base pager contract for pagination of type `T`.
abstract class Pager<T> {
  /// The current [PagingState] of the pager.
  PagingState<int, T> get currentState;

  /// Indicator to know if the [pagingController] has been initialized.
  bool get isPaginationInitialized;

  /// number of element in each page
  int get paginationPageSize;

  /// first page parameter when list is empty or after call [refreshPagination].
  int get firstPageKey;

  /// the number of remaining invisible items that should trigger a new fetch.
  int get invisibleItemsThreshold;

  /// enable logs for pagination flow.
  bool get enablePaginationLogs;

  /// paging controller.
  PagingController<int, T> get pagingController;

  /// cancel all streams subscriptions, fetch data again from [firstPageKey].
  void refreshPagination();

  /// hook for each [refreshPagination] call.
  void onRefreshPagination() {}
}
