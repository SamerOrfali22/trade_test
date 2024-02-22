import 'dart:async';
import 'dart:developer';

import 'package:dart_kit/dart_kit.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:rxdart/subjects.dart';
import 'package:rxdart/transformers.dart';
import 'package:weather_app/base/presentation/pagination/pager.dart';
import 'package:weather_app/base/utils/app_constants.dart';

/// Stream base pagination strategy can handle listen on [Stream] for each
/// page, and rebuild the page when page stream items changed, provide UI with
/// [pagingController], [currentState], [refreshPagination] functionality.
///
/// you first need to call [initPagination] before using [pagingController]
/// and call [disposePagination] when finish using the pagination.
/// assign [pagingController] to [PagedListView] or any pagination UI,
/// implement [onPageData] for provide data to each page and you're all set.
///
/// you can override [firstPageKey] for custom pagination start (0 is Default),
/// [invisibleItemsThreshold] the number of remaining invisible items that
/// should trigger a new fetch (5 is Default).
/// implement [onRefreshPagination] if you want to hook refresh data flow.
class StreamPager<T> implements Pager<T> {
  StreamPager({
    required this.onPageData,
    this.firstPageKey = 0,
    this.invisibleItemsThreshold = 5,
    this.enablePaginationLogs = false,
    this.paginationPageSize = AppConstants.paginationPageSize,
    void Function()? onRefreshPagination,
  }) : _onRefreshPagination = onRefreshPagination;

  /// data fetcher for [page] number.
  final Stream<Result<List<T>>> Function(int pageKey) onPageData;

  /// hook for each [refreshPagination] call.
  final void Function()? _onRefreshPagination;

  @override
  final int paginationPageSize;

  @override
  final int firstPageKey;

  @override
  final int invisibleItemsThreshold;

  @override
  final bool enablePaginationLogs;

  @override
  bool get isPaginationInitialized => _isInitialized;

  @override
  PagingState<int, T> get currentState => pagingController.value;

  @override
  late final PagingController<int, T> pagingController;

  @override
  void refreshPagination() => _refreshData();

  @override
  void onRefreshPagination() => _onRefreshPagination?.call();

  /// main controller for all streams, responsible to emit page data request.
  BehaviorSubject<int> _pageNumberController = BehaviorSubject<int>();

  /// subscription for update state collector.
  StreamSubscription? _consumerSubscription;

  /// indicator to know if the [pagingController] has been initialized.
  bool _isInitialized = false;

  /// initial paging controller and start listen to updates [onPageData].
  void initPagination() {
    pagingController = PagingController<int, T>(
      firstPageKey: firstPageKey,
      invisibleItemsThreshold: invisibleItemsThreshold,
    )..addPageRequestListener(_onPageRequestData);
    _isInitialized = true;
    _consumePageRequest();
  }

  /// ui will call this every time need to fetch new page.
  void _onPageRequestData(int pageKey) {
    _log('_onPageRequestData $pageKey ');
    _pageNumberController.add(pageKey);
  }

  /// meta data of fetched pages
  final Map<int, _PageMetaData> _pagesMetaData = {};

  /// collect events from [onPageData] streams and update [currentState].
  void _consumePageRequest() => _consumerSubscription = _pageNumberController
      .flatMap(
        (pageKey) => onPageData(pageKey)
            .takeDataOrErrorResults() // filter out loading event cuz pagination library will handle it out of the box
            .distinctUntilDataChanged() // filter out repeated data
            .map((result) => (pageKey, result)),
      )
      .listen(
        (tuple) => tuple.$2.whenOrNull(
          onError: (origin, error, st) => _updateErrorState(origin, error, st, tuple.$1),
          onData: (origin, data) => _updateDataState(origin, data, tuple.$1),
        ),
      );

  void _updateErrorState(ResultOrigin origin, Object error, StackTrace? st, int pageKey) {
    _updatePagerState(error: error);
  }

  void _updateDataState(ResultOrigin origin, List<T> data, int pageKey) {
    final metaData = _pagesMetaData[pageKey];

    // insert itemList case
    if (metaData == null) {
      final startIndex = currentState.itemList?.length.let((length) => length - 1) ?? 0;
      _pagesMetaData[pageKey] = _PageMetaData(startIndex: startIndex, endIndex: startIndex + data.length);
      _updatePagerState(
        error: null,
        nextPageKey: data.isEmpty || data.length < paginationPageSize ? null : pageKey + paginationPageSize,
        itemList: [
          ...?currentState.itemList,
          ...data,
        ],
      );
    }

    // update itemList case
    else {
      final startIndex = metaData.startIndex;
      final endIndex = metaData.endIndex;

      _updatePagerState(
        error: null,
        itemList: currentState..itemList?.setRange(startIndex, endIndex, data),
      );
    }
  }

  void _updatePagerState({
    Object? itemList = undefined,
    Object? error = undefined,
    Object? nextPageKey = undefined,
  }) {
    pagingController.value = PagingState<int, T>(
      itemList: itemList == undefined ? currentState.itemList : itemList as List<T>?,
      error: error == undefined ? currentState.error : error,
      nextPageKey: nextPageKey == undefined ? currentState.nextPageKey : nextPageKey as int?,
    );
  }

  /// close collector stream and refetch data again.
  void _refreshData() {
    _pagesMetaData.clear();
    _consumerSubscription?.cancel().then((_) {
      onRefreshPagination();
      _pageNumberController = BehaviorSubject<int>();
      _consumePageRequest();
      _updatePagerState(nextPageKey: firstPageKey, error: null, itemList: null);
    });
  }

  /// resources clean up.
  Future<void> disposePagination() async {
    _pagesMetaData.clear();
    pagingController.dispose();
    await _consumerSubscription?.cancel();
    await _pageNumberController.close();
  }

  final String _logTag = 'PAGINATION-LOG';

  void _log(String message) {
    if (enablePaginationLogs) {
      log('$_logTag: $message');
    }
  }
}

class _PageMetaData {
  const _PageMetaData({required this.startIndex, required this.endIndex});

  final int startIndex;
  final int endIndex;
}
