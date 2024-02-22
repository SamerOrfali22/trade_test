import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'staggered_animation_type.freezed.dart';

@freezed
class StaggeredAnimationType with _$StaggeredAnimationType {
  factory StaggeredAnimationType.fadeIn({
    Duration? duration,
    Duration? delay,
    @Default(Curves.ease) Curve curve,
  }) = StaggeredFadeInAnimation;

  factory StaggeredAnimationType.verticalSlide({
    required double offset,
    Duration? duration,
    Duration? delay,
    @Default(Curves.ease) Curve curve,
  }) = StaggeredVerticalSlideAnimation;

  factory StaggeredAnimationType.horizontalSlide({
    required double offset,
    Duration? duration,
    Duration? delay,
    @Default(Curves.ease) Curve curve,
  }) = StaggeredHorizontalSlideAnimation;

  factory StaggeredAnimationType.scale({
    required double scale,
    Duration? duration,
    Duration? delay,
    @Default(Curves.ease) Curve curve,
  }) = StaggeredScaleAnimation;

  factory StaggeredAnimationType.flip({
    required FlipAxis flipAxis,
    Duration? duration,
    Duration? delay,
    @Default(Curves.ease) Curve curve,
  }) = StaggeredFlipAnimation;

  const StaggeredAnimationType._();

  Widget asAnimationWidget(Widget child) => map(
        fadeIn: (fadeIn) => FadeInAnimation(
          curve: fadeIn.curve,
          delay: fadeIn.delay,
          duration: fadeIn.duration,
          child: child,
        ),
        verticalSlide: (verticalSlide) => SlideAnimation(
          verticalOffset: verticalSlide.offset,
          curve: verticalSlide.curve,
          delay: verticalSlide.delay,
          duration: verticalSlide.duration,
          child: child,
        ),
        horizontalSlide: (horizontalSlide) => SlideAnimation(
          horizontalOffset: horizontalSlide.offset,
          curve: horizontalSlide.curve,
          delay: horizontalSlide.delay,
          duration: horizontalSlide.duration,
          child: child,
        ),
        scale: (scale) => ScaleAnimation(
          scale: scale.scale,
          curve: scale.curve,
          delay: scale.delay,
          duration: scale.duration,
          child: child,
        ),
        flip: (flip) => FlipAnimation(
          flipAxis: flip.flipAxis,
          curve: flip.curve,
          delay: flip.delay,
          duration: flip.duration,
          child: child,
        ),
      );
}

extension StaggeredAnimationTypeListExt on List<StaggeredAnimationType> {
  Widget asAnimationWidget(Widget child) {
    if (length == 1) {
      return first.asAnimationWidget(child);
    }
    return sublist(length - (length - 1)).asAnimationWidget(child).let((child) => first.asAnimationWidget(child));
  }
}
