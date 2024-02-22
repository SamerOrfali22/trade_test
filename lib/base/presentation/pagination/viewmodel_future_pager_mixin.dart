import 'package:dart_kit/dart_kit.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:weather_app/base/data/models/paginated_model.dart';
import 'package:weather_app/base/presentation/pagination/pager.dart';
import 'package:weather_app/base/presentation/viewmodels/base_viewmodel.dart';
import 'package:weather_app/base/utils/app_constants.dart';

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

  @override
  void onRefreshPagination() {}

  Future<Result<PaginatedModel<T>>> onPageData(int pageKey);

  /// initial paging controller and start listen to updates [onPageData].
  void _initPagination() {
    pagingController = PagingController<int, T>(
      firstPageKey: firstPageKey,
      invisibleItemsThreshold: invisibleItemsThreshold,
    )..addPageRequestListener(_onPageRequestData);
    _isInitialized = true;
  }

  void _onPageRequestData(int pageKey) {
    onPageData(pageKey).then(
      (it) => it.when(
          onLoading: (_) => throw UnimplementedError(),
          onData: (origin, data) => _updateDataState(origin, data, pageKey),
          onError: (origin, error, st) => _updateErrorState(origin, error, st, pageKey)),
    );
  }

  void _updateErrorState(ResultOrigin origin, Object error, StackTrace? st, int pageKey) {
    _updatePagerState(error: error);
  }

  void _updateDataState(ResultOrigin origin, PaginatedModel<T> data, int pageKey) {
    _updatePagerState(
      error: null,
      nextPageKey: data.totalPages.isNullOrZero || pageKey >= data.totalPages! ? null : pageKey + 1,
      itemList: [
        ...?currentState.itemList,
        ...data.data ?? <T>[],
      ],
    );
  }

  void _updatePagerState({
    Object? itemList = undefined,
    Object? error = undefined,
    Object? nextPageKey = undefined,
  }) {
    if (_isDisposed) {
      return;
    }

    pagingController.value = PagingState<int, T>(
      itemList: itemList == undefined ? currentState.itemList : itemList as List<T>?,
      error: error == undefined ? currentState.error : error,
      nextPageKey: nextPageKey == undefined ? currentState.nextPageKey : nextPageKey as int?,
    );
  }

  /// close collector stream and refetch data again.
  void _refreshData() {
    onRefreshPagination();
    _updatePagerState(nextPageKey: firstPageKey, error: null, itemList: null);
  }

  /// resources clean up.
  Future<void> _disposePagination() async {
    pagingController.dispose();
    _isDisposed = true;
  }

  bool _isInitialized = false;
  bool _isDisposed = false;
}
