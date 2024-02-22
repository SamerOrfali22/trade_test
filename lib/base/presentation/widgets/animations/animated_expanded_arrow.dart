import 'package:flutter/material.dart';

class AnimatedExpandedArrow extends StatelessWidget {
  const AnimatedExpandedArrow({
    required this.isExpanded,
    required this.size,
    required this.color,
    super.key,
  });

  final bool isExpanded;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      transform: Matrix4.rotationZ(isExpanded ? 3.14159 : 0), // Rotate 180 degrees (π radians)
      transformAlignment: Alignment.center,
      child: Icon(Icons.arrow_drop_down, size: size, color: color),
    );
  }
}
