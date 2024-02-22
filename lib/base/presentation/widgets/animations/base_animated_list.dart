import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:weather_app/base/presentation/widgets/animations/staggered_animation_type.dart';
import 'package:weather_app/base/utils/ui_utils/animations/animation_duration.dart';

class BaseAnimatedList<T> extends StatelessWidget {
  const BaseAnimatedList({
    required this.animations,
    required this.items,
    required this.itemBuilder,
    this.animationDuration = AnimationDuration.MEDIUM,
    this.shrinkWrap = false,
    this.separatorBuilder,
    this.padding,
    this.physics,
    this.emptyDataMessage,
    this.emptyDataWidgetBuilder,
    super.key,
  });

  final List<T> items;
  final List<StaggeredAnimationType> animations;
  final AnimationDuration animationDuration;
  final IndexedWidgetBuilder? separatorBuilder;
  final bool shrinkWrap;

  final Widget Function(BuildContext context, int index, T item) itemBuilder;
  final EdgeInsetsGeometry? padding;
  final ScrollPhysics? physics;
  final String? emptyDataMessage;
  final Widget Function(BuildContext context)? emptyDataWidgetBuilder;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return emptyDataWidgetBuilder?.call(context) ?? Center(child: Text(emptyDataMessage ?? ''));
    }
    return ListView.separated(
      key: key,
      physics: physics,
      itemCount: items.length,
      separatorBuilder: separatorBuilder ?? (_, __) => const SizedBox.shrink(),
      padding: padding,
      shrinkWrap: shrinkWrap,
      itemBuilder: (BuildContext context, int index) {
        return AnimationConfiguration.staggeredList(
          position: index,
          duration: animationDuration.duration,
          child: SlideAnimation(
            verticalOffset: 50.0,
            child: animations.asAnimationWidget(itemBuilder(context, index, items[index])),
          ),
        );
      },
    );
  }
}
