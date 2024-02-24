import 'package:flutter/material.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';

class LocateMeWidget extends StatelessWidget {
  const LocateMeWidget({Key? key, required this.onTap}) : super(key: key);
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: context.colors.onPrimary,
        ),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.location_on_outlined, color: context.colors.tertiary, size: 26),
            Text(
              'Locate me',
              style: context.titleMedium?.copyWith(color: context.colors.tertiary),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
