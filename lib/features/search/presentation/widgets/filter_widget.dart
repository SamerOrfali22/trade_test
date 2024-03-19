import 'package:flutter/material.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';
import 'package:weather_app/features/search/data/models/filter_model.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({Key? key, required this.model}) : super(key: key);

  final FilterModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0,top: 10),
          child: Text(
            model.name!,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            children: model.data!
                .map(
                  (e) => e.name == null || e.count == null
                      ? SizedBox()
                      : Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12),
                          child: Row(
                            children: [
                              Text(
                                e.name!,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: context.colors.onChangeRequest,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '(' + e.count!.toString() + ')',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: context.colors.outline,
                                ),
                              ),
                            ],
                          ),
                        ),
                )
                .toList(),
          ),
        ),
        Container(width: double.infinity, height: .5, color: context.colors.outline),
      ],
    );
  }
}
