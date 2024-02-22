import 'package:flutter/material.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';

class EmptyDataWidget extends StatelessWidget {
  const EmptyDataWidget({this.message, super.key});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message ?? context.localizations.empty_data, style: context.headlineSmall),
    );
  }
}
