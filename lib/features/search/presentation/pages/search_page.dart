import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/base/presentation/pages/base_page.dart';
import 'package:weather_app/base/presentation/widgets/rx/base_result_future_builder.dart';
import 'package:weather_app/base/presentation/widgets/rx/loading_overlay.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/features/search/presentation/viewmodels/search_viewmodel.dart';
import 'package:weather_app/features/search/presentation/widgets/filters_section.dart';
import 'package:weather_app/features/search/presentation/widgets/product_card.dart';
import 'package:weather_app/features/search/presentation/widgets/search_textfield.dart';

@RoutePage()
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);
  static const String routePath = '/';

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends BasePage<SearchPage, SearchViewmodel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50.h),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 10),
              child: SearchTextField(viewmodel: viewmodel),
            ),
            FiltersSection(viewmodel: viewmodel),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: LoadingOverlay(
                  viewmodels: [viewmodel],
                  child: BaseResultFutureBuilder(
                    future: viewmodel.futureProducts,
                    onRetry: () => viewmodel.fetchProducts(),
                    onSuccess: (response) {
                      return response.products.length == 0
                          ? Center(
                              child: Text(
                                'Search for anything on Tradeling!',
                                style: context.titleLarge,
                              ),
                            )
                          : RefreshIndicator(
                              onRefresh: () async => viewmodel.fetchProducts(),
                              child: GridView.builder(
                                padding: const EdgeInsets.all(16),
                                itemCount: response.products.length,
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 8,
                                  crossAxisSpacing: 16,
                                  childAspectRatio: 156.0 / 200.0,
                                ),
                                itemBuilder: (_, index) => ProductCard(model: response.products[index]),
                              ),
                            );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  String get loggerTag => 'SearchPage';
}
