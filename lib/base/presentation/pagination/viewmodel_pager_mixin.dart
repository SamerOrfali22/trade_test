import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:weather_app/base/presentation/pagination/pager.dart';
import 'package:weather_app/base/presentation/pagination/stream_pager.dart';
import 'package:weather_app/base/presentation/viewmodels/base_viewmodel.dart';
import 'package:weather_app/base/utils/app_constants.dart';

/// A mixin that provides pagination functionality to a [BaseViewmodel].
mixin ViewmodelPagerMixin<T> on BaseViewmodel implements Pager<T> {
  // StreamPager instance to handle pagination.
  late final StreamPager<T> _pager = StreamPager<T>(
    onPageData: onPageData,
    firstPageKey: firstPageKey,
    invisibleItemsThreshold: invisibleItemsThreshold,
    enablePaginationLogs: enablePaginationLogs,
    onRefreshPagination: onRefreshPagination,
  );

  @override
  void onInit() {
    super.onInit();
    _pager.initPagination();
  }

  @override
  void dispose() {
    _pager.disposePagination();
    super.dispose();
  }

  /// Fetches data for the given [pageKey] and returns a stream of a [Result] containing a list of type [T] objects.
  Stream<Result<List<T>>> onPageData(int pageKey);

  /// An optional callback function that is called when the pagination is refreshed.
  @override
  void onRefreshPagination() {}

  /// The number of items to be fetched in each page.
  @override
  int get paginationPageSize => AppConstants.paginationPageSize;

  /// The key for the first page to be fetched.
  @override
  int get firstPageKey => 0;

  /// The number of invisible items needed to trigger the next page fetch.
  @override
  int get invisibleItemsThreshold => 5;

  /// A flag indicating whether pagination logs should be enabled or not.
  @override
  bool get enablePaginationLogs => false;

  /// Returns the current state of the pagination.
  @nonVirtual
  @override
  PagingState<int, T> get currentState => _pager.currentState;

  /// Refreshes the pagination.
  @nonVirtual
  @override
  void refreshPagination() => _pager.refreshPagination();

  /// Returns the pagination controller.
  @nonVirtual
  @override
  PagingController<int, T> get pagingController => _pager.pagingController;

  /// Returns a flag indicating whether pagination has been initialized or not.
  @nonVirtual
  @override
  bool get isPaginationInitialized => _pager.isPaginationInitialized;
}
