import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/base/utils/ui_utils/animations/switchers_animation.dart';
import 'package:weather_app/features/weather/presentation/viewmodels/weather_viewmodel.dart';
import 'package:weather_app/features/weather/presentation/widgets/locate_me_widget.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key, required this.viewmodel}) : super(key: key);
  final WeatherViewmodel viewmodel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: viewmodel.searchController,
              onSubmitted: (_) => viewmodel.onSubmitSearch(),
              style: context.titleMedium?.copyWith(color: context.colors.tertiary),
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: context.titleLarge?.copyWith(color: context.colors.tertiary),
                prefixIcon: IconButton(
                  icon: Icon(Icons.search, color: context.colors.tertiary),
                  onPressed: viewmodel.onSubmitSearch,
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear, color: context.colors.tertiary),
                  onPressed: viewmodel.searchController.clear,
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Obx(
            () => AnimatedSwitcher2(
              showChild: viewmodel.showLocateMeButton.value,
              child: LocateMeWidget(onTap: () => viewmodel.fetchCurrentLocation()),
            ),
          ),
        ],
      ),
    );
  }
}
