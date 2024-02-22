import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:separated_column/separated_column.dart';
import 'package:weather_app/base/presentation/widgets/animations/staggered_animation_type.dart';
import 'package:weather_app/base/utils/ui_utils/animations/animation_duration.dart';

class AnimatedColumn extends StatelessWidget {
  const AnimatedColumn({
    required this.animations,
    this.animationDuration = AnimationDuration.MEDIUM,
    this.separatorBuilder,
    this.textBaseline,
    this.textDirection,
    this.children = const <Widget>[],
    this.includeOuterSeparators = false,
    this.mainAxisSize = MainAxisSize.max,
    this.verticalDirection = VerticalDirection.down,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    super.key,
  });

  final List<Widget> children;
  final List<StaggeredAnimationType> animations;
  final AnimationDuration animationDuration;
  final TextBaseline? textBaseline;
  final bool includeOuterSeparators;
  final TextDirection? textDirection;
  final MainAxisSize mainAxisSize;
  final VerticalDirection verticalDirection;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final IndexedWidgetBuilder? separatorBuilder;

  @override
  Widget build(BuildContext context) {
    return SeparatedColumn(
      separatorBuilder: separatorBuilder ?? (_, __) => const SizedBox.shrink(),
      key: key,
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      includeOuterSeparators: includeOuterSeparators,
      children: AnimationConfiguration.toStaggeredList(
        duration: animationDuration.duration,
        childAnimationBuilder: (widget) => animations.asAnimationWidget(widget),
        children: children,
      ),
    );
  }
}
