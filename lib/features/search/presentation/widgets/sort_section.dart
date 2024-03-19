import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/features/search/domain/enums/sort_enum.dart';
import 'package:weather_app/features/search/presentation/viewmodels/search_viewmodel.dart';

class SortSection extends StatelessWidget {
  const SortSection({Key? key, required this.viewmodel}) : super(key: key);
  final SearchViewmodel viewmodel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sort',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Obx(() => Row(
                  children: SortEnum.values
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: InkWell(
                            onTap: () {
                              viewmodel.changeSort(e);
                              context.maybePop();
                            },
                            child: Chip(
                              label: Text(
                                e.name,
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              backgroundColor: viewmodel.selectedSort == e ? Colors.deepOrange : Colors.white,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                )),
          ),
        ],
      ),
    );
  }
}
