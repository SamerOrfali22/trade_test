import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/features/search/presentation/viewmodels/search_viewmodel.dart';

class FiltersSection extends StatelessWidget {
  const FiltersSection({Key? key, required this.viewmodel}) : super(key: key);
  final SearchViewmodel viewmodel;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => viewmodel.term == '' || viewmodel.currentResponse.value == null
          ? SizedBox()
          : Column(
              children: [
                Container(width: double.infinity, height: .5, color: context.colors.outline),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 6),
                  child: Row(
                    children: [
                      Text(
                        viewmodel.term.value,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Text(
                        ' (' + viewmodel.currentResponse.value!.products.length.toString() + ')',
                        style: TextStyle(fontSize: 14, color: context.colors.outline),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Icon(Icons.filter_alt_sharp),
                        ),
                      )
                    ],
                  ),
                ),
                Container(width: double.infinity, height: .5, color: context.colors.outline),
              ],
            ),
    );
  }
}
