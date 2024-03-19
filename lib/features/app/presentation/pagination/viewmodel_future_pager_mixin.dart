import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:weather_app/base/presentation/viewmodels/base_viewmodel.dart';
import 'package:weather_app/base/utils/app_constants.dart';
import 'package:weather_app/features/app/presentation/pagination/pager.dart';
import 'package:weather_app/features/search/data/models/pagination_model.dart';

/// A mixin that provides pagination functionality to a [BaseViewmodel].
mixin ViewmodelFuturePagerMixin<T> on BaseViewmodel implements Pager<T> {
  @override
  void onInit() {
    super.onInit();
    _initPagination();
  }

  @override
  void dispose() {
    _disposePagination();
    super.dispose();
  }

  @override
  int get paginationPageSize => AppConstants.paginationPageSize;

  @override
  int get firstPageKey => 1;

  @override
  int get invisibleItemsThreshold => 5;

  @override
  bool get enablePaginationLogs => false;

  @override
  bool get isPaginationInitialized => _isInitialized;

  @override
  PagingState<int, T> get currentState => pagingController.value;

  @override
  late final PagingController<int, T> pagingController;

  @override
  void refreshPagination() => _refreshData();

  @mustCallSuper
  void whenPaginationTotalCountChange(int count) {}

  @mustCallSuper
  void whenSuccessFirstPageFetch(PagingState<int, T> state) {}

  @override
  void onRefreshPagination() {}

  @mustCallSuper
  void whenStartFetching(int pageKey) {}

  @mustCallSuper
  void whenSuccessNewPageFetch(PagingState<int, T> state) {}

  @mustCallSuper
  void whenNewPageFetchError(PagingState<int, T> state) {}

  @mustCallSuper
  void whenFirstPageFetchError(PagingState<int, T> state) {}

  Future<Result<PaginationModel<T>>> onPageData(int pageKey);

  /// initial paging controller and start listen to updates [onPageData].
  void _initPagination() {
    pagingController = PagingController<int, T>(
      firstPageKey: firstPageKey,
      invisibleItemsThreshold: invisibleItemsThreshold,
    )..addPageRequestListener(_onPageRequestData);
    _isInitialized = true;
  }

  void loadFirstPage() => _onPageRequestData(1);

  void _onPageRequestData(int pageKey) {
    onPageData(pageKey).then(
      (it) => it.when(
        onLoading: (_) => throw UnimplementedError(),
        onData: (origin, data) => _updateDataState(origin, data, pageKey),
        onError: (origin, error, st) => _updateErrorState(origin, error, st, pageKey),
      ),
    );
  }

  void _updateErrorState(ResultOrigin origin, Object error, StackTrace? st, int pageKey) {
    _updatePagerState(pageKey: pageKey, error: error);
  }

  void _updateDataState(ResultOrigin origin, PaginationModel<T> data, int pageKey) {
    _updatePagerState(
      pageKey: pageKey,
      error: null,
      nextPageKey: data.totalPages.isNullOrZero || pageKey >= data.totalPages ? null : pageKey + 1,
      itemList: [
        ...?currentState.itemList,
        ...data.data,
      ],
    );
  }

  void _updatePagerState({
    required int pageKey,
    Object? itemList = undefined,
    Object? error = undefined,
    Object? nextPageKey = undefined,
  }) {
    pagingController.value = PagingState<int, T>(
      itemList: itemList == undefined ? currentState.itemList : itemList as List<T>?,
      error: error == undefined ? currentState.error : error,
      nextPageKey: nextPageKey == undefined ? currentState.nextPageKey : nextPageKey as int?,
    );
    pageKey == 1 ? whenSuccessFirstPageFetch(pagingController.value) : whenSuccessNewPageFetch(pagingController.value);
    whenPaginationTotalCountChange(
      itemList == undefined
          ? 0
          : (itemList as List<T>?) == null
              ? 0
              : itemList!.length,
    );
  }

  /// close collector stream and re-fetch data again.
  void _refreshData() {
    onRefreshPagination();
    _updatePagerState(pageKey: firstPageKey, nextPageKey: firstPageKey, error: null, itemList: null);
  }

  /// resources clean up.
  Future<void> _disposePagination() async {
    pagingController.dispose();
  }

  bool _isInitialized = false;
}
