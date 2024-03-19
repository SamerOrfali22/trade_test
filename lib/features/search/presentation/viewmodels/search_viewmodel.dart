import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:rx_viewmodels/viewmodel.dart';
import 'package:weather_app/base/presentation/viewmodels/base_viewmodel.dart';
import 'package:weather_app/features/search/data/models/search_response_model.dart';
import 'package:weather_app/features/search/domain/repository/search_repository.dart';

@injectable
class SearchViewmodel extends BaseViewmodel {
  SearchViewmodel(this.searchRepository);

  final SearchRepository searchRepository;

  late final futureProducts = RxResultFuture<SearchResponseModel>()..disposeBy(this);

  final textController = TextEditingController(text: '');

  RxString term = ''.obs;

  Map<String, dynamic> filters = {};
  Rxn<SearchResponseModel> currentResponse = Rxn();

  void addFilter({required String key, required String value}) {
    filters[key] = value;
    fetchProducts();
  }

  void fetchProducts() => futureProducts(
        searchRepository.search(keyword: textController.text, filters: filters).then((value) {
          term(textController.text);
          currentResponse(value.requireData());
          return value;
        }),
      );

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  @override
  String get loggerTag => 'SearchViewmodel';
}
