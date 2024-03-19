import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/features/search/presentation/viewmodels/search_viewmodel.dart';
import 'package:weather_app/features/search/presentation/widgets/filter_widget.dart';
import 'package:weather_app/features/search/presentation/widgets/sort_section.dart';

class FiltersSheet extends StatelessWidget {
  const FiltersSheet({Key? key, required this.viewmodel}) : super(key: key);
  final SearchViewmodel viewmodel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: context.height * .7,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black,width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Filters',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(width: double.infinity, height: .5, color: context.colors.outline),
            SizedBox(height: 5),
            SortSection(viewmodel: viewmodel),
            Container(width: double.infinity, height: .5, color: context.colors.outline),
            SizedBox(height: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: viewmodel.currentResponse.value!.filters!.map((e) => FilterWidget(model: e)).toList(),
            )
          ],
        ),
      ),
    );
  }
}
