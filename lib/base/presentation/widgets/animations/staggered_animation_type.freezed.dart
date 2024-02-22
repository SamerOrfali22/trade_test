// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staggered_animation_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StaggeredAnimationType {
  Duration? get duration => throw _privateConstructorUsedError;

  Duration? get delay => throw _privateConstructorUsedError;

  Curve get curve => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration? duration, Duration? delay, Curve curve) fadeIn,
    required TResult Function(double offset, Duration? duration, Duration? delay, Curve curve) verticalSlide,
    required TResult Function(double offset, Duration? duration, Duration? delay, Curve curve) horizontalSlide,
    required TResult Function(double scale, Duration? duration, Duration? delay, Curve curve) scale,
    required TResult Function(FlipAxis flipAxis, Duration? duration, Duration? delay, Curve curve) flip,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration? duration, Duration? delay, Curve curve)? fadeIn,
    TResult? Function(double offset, Duration? duration, Duration? delay, Curve curve)? verticalSlide,
    TResult? Function(double offset, Duration? duration, Duration? delay, Curve curve)? horizontalSlide,
    TResult? Function(double scale, Duration? duration, Duration? delay, Curve curve)? scale,
    TResult? Function(FlipAxis flipAxis, Duration? duration, Duration? delay, Curve curve)? flip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration? duration, Duration? delay, Curve curve)? fadeIn,
    TResult Function(double offset, Duration? duration, Duration? delay, Curve curve)? verticalSlide,
    TResult Function(double offset, Duration? duration, Duration? delay, Curve curve)? horizontalSlide,
    TResult Function(double scale, Duration? duration, Duration? delay, Curve curve)? scale,
    TResult Function(FlipAxis flipAxis, Duration? duration, Duration? delay, Curve curve)? flip,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StaggeredFadeInAnimation value) fadeIn,
    required TResult Function(StaggeredVerticalSlideAnimation value) verticalSlide,
    required TResult Function(StaggeredHorizontalSlideAnimation value) horizontalSlide,
    required TResult Function(StaggeredScaleAnimation value) scale,
    required TResult Function(StaggeredFlipAnimation value) flip,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StaggeredFadeInAnimation value)? fadeIn,
    TResult? Function(StaggeredVerticalSlideAnimation value)? verticalSlide,
    TResult? Function(StaggeredHorizontalSlideAnimation value)? horizontalSlide,
    TResult? Function(StaggeredScaleAnimation value)? scale,
    TResult? Function(StaggeredFlipAnimation value)? flip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StaggeredFadeInAnimation value)? fadeIn,
    TResult Function(StaggeredVerticalSlideAnimation value)? verticalSlide,
    TResult Function(StaggeredHorizontalSlideAnimation value)? horizontalSlide,
    TResult Function(StaggeredScaleAnimation value)? scale,
    TResult Function(StaggeredFlipAnimation value)? flip,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StaggeredAnimationTypeCopyWith<StaggeredAnimationType> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaggeredAnimationTypeCopyWith<$Res> {
  factory $StaggeredAnimationTypeCopyWith(StaggeredAnimationType value, $Res Function(StaggeredAnimationType) then) =
      _$StaggeredAnimationTypeCopyWithImpl<$Res, StaggeredAnimationType>;

  @useResult
  $Res call({Duration? duration, Duration? delay, Curve curve});
}

/// @nodoc
class _$StaggeredAnimationTypeCopyWithImpl<$Res, $Val extends StaggeredAnimationType>
    implements $StaggeredAnimationTypeCopyWith<$Res> {
  _$StaggeredAnimationTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = freezed,
    Object? delay = freezed,
    Object? curve = null,
  }) {
    return _then(_value.copyWith(
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      delay: freezed == delay
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as Duration?,
      curve: null == curve
          ? _value.curve
          : curve // ignore: cast_nullable_to_non_nullable
              as Curve,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StaggeredFadeInAnimationImplCopyWith<$Res> implements $StaggeredAnimationTypeCopyWith<$Res> {
  factory _$$StaggeredFadeInAnimationImplCopyWith(
          _$StaggeredFadeInAnimationImpl value, $Res Function(_$StaggeredFadeInAnimationImpl) then) =
      __$$StaggeredFadeInAnimationImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({Duration? duration, Duration? delay, Curve curve});
}

/// @nodoc
class __$$StaggeredFadeInAnimationImplCopyWithImpl<$Res>
    extends _$StaggeredAnimationTypeCopyWithImpl<$Res, _$StaggeredFadeInAnimationImpl>
    implements _$$StaggeredFadeInAnimationImplCopyWith<$Res> {
  __$$StaggeredFadeInAnimationImplCopyWithImpl(
      _$StaggeredFadeInAnimationImpl _value, $Res Function(_$StaggeredFadeInAnimationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = freezed,
    Object? delay = freezed,
    Object? curve = null,
  }) {
    return _then(_$StaggeredFadeInAnimationImpl(
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      delay: freezed == delay
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as Duration?,
      curve: null == curve
          ? _value.curve
          : curve // ignore: cast_nullable_to_non_nullable
              as Curve,
    ));
  }
}

/// @nodoc

class _$StaggeredFadeInAnimationImpl extends StaggeredFadeInAnimation {
  _$StaggeredFadeInAnimationImpl({this.duration, this.delay, this.curve = Curves.ease}) : super._();

  @override
  final Duration? duration;
  @override
  final Duration? delay;
  @override
  @JsonKey()
  final Curve curve;

  @override
  String toString() {
    return 'StaggeredAnimationType.fadeIn(duration: $duration, delay: $delay, curve: $curve)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaggeredFadeInAnimationImpl &&
            (identical(other.duration, duration) || other.duration == duration) &&
            (identical(other.delay, delay) || other.delay == delay) &&
            (identical(other.curve, curve) || other.curve == curve));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration, delay, curve);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaggeredFadeInAnimationImplCopyWith<_$StaggeredFadeInAnimationImpl> get copyWith =>
      __$$StaggeredFadeInAnimationImplCopyWithImpl<_$StaggeredFadeInAnimationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration? duration, Duration? delay, Curve curve) fadeIn,
    required TResult Function(double offset, Duration? duration, Duration? delay, Curve curve) verticalSlide,
    required TResult Function(double offset, Duration? duration, Duration? delay, Curve curve) horizontalSlide,
    required TResult Function(double scale, Duration? duration, Duration? delay, Curve curve) scale,
    required TResult Function(FlipAxis flipAxis, Duration? duration, Duration? delay, Curve curve) flip,
  }) {
    return fadeIn(duration, delay, curve);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration? duration, Duration? delay, Curve curve)? fadeIn,
    TResult? Function(double offset, Duration? duration, Duration? delay, Curve curve)? verticalSlide,
    TResult? Function(double offset, Duration? duration, Duration? delay, Curve curve)? horizontalSlide,
    TResult? Function(double scale, Duration? duration, Duration? delay, Curve curve)? scale,
    TResult? Function(FlipAxis flipAxis, Duration? duration, Duration? delay, Curve curve)? flip,
  }) {
    return fadeIn?.call(duration, delay, curve);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration? duration, Duration? delay, Curve curve)? fadeIn,
    TResult Function(double offset, Duration? duration, Duration? delay, Curve curve)? verticalSlide,
    TResult Function(double offset, Duration? duration, Duration? delay, Curve curve)? horizontalSlide,
    TResult Function(double scale, Duration? duration, Duration? delay, Curve curve)? scale,
    TResult Function(FlipAxis flipAxis, Duration? duration, Duration? delay, Curve curve)? flip,
    required TResult orElse(),
  }) {
    if (fadeIn != null) {
      return fadeIn(duration, delay, curve);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StaggeredFadeInAnimation value) fadeIn,
    required TResult Function(StaggeredVerticalSlideAnimation value) verticalSlide,
    required TResult Function(StaggeredHorizontalSlideAnimation value) horizontalSlide,
    required TResult Function(StaggeredScaleAnimation value) scale,
    required TResult Function(StaggeredFlipAnimation value) flip,
  }) {
    return fadeIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StaggeredFadeInAnimation value)? fadeIn,
    TResult? Function(StaggeredVerticalSlideAnimation value)? verticalSlide,
    TResult? Function(StaggeredHorizontalSlideAnimation value)? horizontalSlide,
    TResult? Function(StaggeredScaleAnimation value)? scale,
    TResult? Function(StaggeredFlipAnimation value)? flip,
  }) {
    return fadeIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StaggeredFadeInAnimation value)? fadeIn,
    TResult Function(StaggeredVerticalSlideAnimation value)? verticalSlide,
    TResult Function(StaggeredHorizontalSlideAnimation value)? horizontalSlide,
    TResult Function(StaggeredScaleAnimation value)? scale,
    TResult Function(StaggeredFlipAnimation value)? flip,
    required TResult orElse(),
  }) {
    if (fadeIn != null) {
      return fadeIn(this);
    }
    return orElse();
  }
}

abstract class StaggeredFadeInAnimation extends StaggeredAnimationType {
  factory StaggeredFadeInAnimation({final Duration? duration, final Duration? delay, final Curve curve}) =
      _$StaggeredFadeInAnimationImpl;

  StaggeredFadeInAnimation._() : super._();

  @override
  Duration? get duration;

  @override
  Duration? get delay;

  @override
  Curve get curve;

  @override
  @JsonKey(ignore: true)
  _$$StaggeredFadeInAnimationImplCopyWith<_$StaggeredFadeInAnimationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StaggeredVerticalSlideAnimationImplCopyWith<$Res> implements $StaggeredAnimationTypeCopyWith<$Res> {
  factory _$$StaggeredVerticalSlideAnimationImplCopyWith(
          _$StaggeredVerticalSlideAnimationImpl value, $Res Function(_$StaggeredVerticalSlideAnimationImpl) then) =
      __$$StaggeredVerticalSlideAnimationImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({double offset, Duration? duration, Duration? delay, Curve curve});
}

/// @nodoc
class __$$StaggeredVerticalSlideAnimationImplCopyWithImpl<$Res>
    extends _$StaggeredAnimationTypeCopyWithImpl<$Res, _$StaggeredVerticalSlideAnimationImpl>
    implements _$$StaggeredVerticalSlideAnimationImplCopyWith<$Res> {
  __$$StaggeredVerticalSlideAnimationImplCopyWithImpl(
      _$StaggeredVerticalSlideAnimationImpl _value, $Res Function(_$StaggeredVerticalSlideAnimationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? duration = freezed,
    Object? delay = freezed,
    Object? curve = null,
  }) {
    return _then(_$StaggeredVerticalSlideAnimationImpl(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as double,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      delay: freezed == delay
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as Duration?,
      curve: null == curve
          ? _value.curve
          : curve // ignore: cast_nullable_to_non_nullable
              as Curve,
    ));
  }
}

/// @nodoc

class _$StaggeredVerticalSlideAnimationImpl extends StaggeredVerticalSlideAnimation {
  _$StaggeredVerticalSlideAnimationImpl({required this.offset, this.duration, this.delay, this.curve = Curves.ease})
      : super._();

  @override
  final double offset;
  @override
  final Duration? duration;
  @override
  final Duration? delay;
  @override
  @JsonKey()
  final Curve curve;

  @override
  String toString() {
    return 'StaggeredAnimationType.verticalSlide(offset: $offset, duration: $duration, delay: $delay, curve: $curve)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaggeredVerticalSlideAnimationImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.duration, duration) || other.duration == duration) &&
            (identical(other.delay, delay) || other.delay == delay) &&
            (identical(other.curve, curve) || other.curve == curve));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset, duration, delay, curve);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaggeredVerticalSlideAnimationImplCopyWith<_$StaggeredVerticalSlideAnimationImpl> get copyWith =>
      __$$StaggeredVerticalSlideAnimationImplCopyWithImpl<_$StaggeredVerticalSlideAnimationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration? duration, Duration? delay, Curve curve) fadeIn,
    required TResult Function(double offset, Duration? duration, Duration? delay, Curve curve) verticalSlide,
    required TResult Function(double offset, Duration? duration, Duration? delay, Curve curve) horizontalSlide,
    required TResult Function(double scale, Duration? duration, Duration? delay, Curve curve) scale,
    required TResult Function(FlipAxis flipAxis, Duration? duration, Duration? delay, Curve curve) flip,
  }) {
    return verticalSlide(offset, duration, delay, curve);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration? duration, Duration? delay, Curve curve)? fadeIn,
    TResult? Function(double offset, Duration? duration, Duration? delay, Curve curve)? verticalSlide,
    TResult? Function(double offset, Duration? duration, Duration? delay, Curve curve)? horizontalSlide,
    TResult? Function(double scale, Duration? duration, Duration? delay, Curve curve)? scale,
    TResult? Function(FlipAxis flipAxis, Duration? duration, Duration? delay, Curve curve)? flip,
  }) {
    return verticalSlide?.call(offset, duration, delay, curve);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration? duration, Duration? delay, Curve curve)? fadeIn,
    TResult Function(double offset, Duration? duration, Duration? delay, Curve curve)? verticalSlide,
    TResult Function(double offset, Duration? duration, Duration? delay, Curve curve)? horizontalSlide,
    TResult Function(double scale, Duration? duration, Duration? delay, Curve curve)? scale,
    TResult Function(FlipAxis flipAxis, Duration? duration, Duration? delay, Curve curve)? flip,
    required TResult orElse(),
  }) {
    if (verticalSlide != null) {
      return verticalSlide(offset, duration, delay, curve);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StaggeredFadeInAnimation value) fadeIn,
    required TResult Function(StaggeredVerticalSlideAnimation value) verticalSlide,
    required TResult Function(StaggeredHorizontalSlideAnimation value) horizontalSlide,
    required TResult Function(StaggeredScaleAnimation value) scale,
    required TResult Function(StaggeredFlipAnimation value) flip,
  }) {
    return verticalSlide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StaggeredFadeInAnimation value)? fadeIn,
    TResult? Function(StaggeredVerticalSlideAnimation value)? verticalSlide,
    TResult? Function(StaggeredHorizontalSlideAnimation value)? horizontalSlide,
    TResult? Function(StaggeredScaleAnimation value)? scale,
    TResult? Function(StaggeredFlipAnimation value)? flip,
  }) {
    return verticalSlide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StaggeredFadeInAnimation value)? fadeIn,
    TResult Function(StaggeredVerticalSlideAnimation value)? verticalSlide,
    TResult Function(StaggeredHorizontalSlideAnimation value)? horizontalSlide,
    TResult Function(StaggeredScaleAnimation value)? scale,
    TResult Function(StaggeredFlipAnimation value)? flip,
    required TResult orElse(),
  }) {
    if (verticalSlide != null) {
      return verticalSlide(this);
    }
    return orElse();
  }
}

abstract class StaggeredVerticalSlideAnimation extends StaggeredAnimationType {
  factory StaggeredVerticalSlideAnimation(
      {required final double offset,
      final Duration? duration,
      final Duration? delay,
      final Curve curve}) = _$StaggeredVerticalSlideAnimationImpl;

  StaggeredVerticalSlideAnimation._() : super._();

  double get offset;

  @override
  Duration? get duration;

  @override
  Duration? get delay;

  @override
  Curve get curve;

  @override
  @JsonKey(ignore: true)
  _$$StaggeredVerticalSlideAnimationImplCopyWith<_$StaggeredVerticalSlideAnimationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StaggeredHorizontalSlideAnimationImplCopyWith<$Res> implements $StaggeredAnimationTypeCopyWith<$Res> {
  factory _$$StaggeredHorizontalSlideAnimationImplCopyWith(
          _$StaggeredHorizontalSlideAnimationImpl value, $Res Function(_$StaggeredHorizontalSlideAnimationImpl) then) =
      __$$StaggeredHorizontalSlideAnimationImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({double offset, Duration? duration, Duration? delay, Curve curve});
}

/// @nodoc
class __$$StaggeredHorizontalSlideAnimationImplCopyWithImpl<$Res>
    extends _$StaggeredAnimationTypeCopyWithImpl<$Res, _$StaggeredHorizontalSlideAnimationImpl>
    implements _$$StaggeredHorizontalSlideAnimationImplCopyWith<$Res> {
  __$$StaggeredHorizontalSlideAnimationImplCopyWithImpl(
      _$StaggeredHorizontalSlideAnimationImpl _value, $Res Function(_$StaggeredHorizontalSlideAnimationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? duration = freezed,
    Object? delay = freezed,
    Object? curve = null,
  }) {
    return _then(_$StaggeredHorizontalSlideAnimationImpl(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as double,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      delay: freezed == delay
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as Duration?,
      curve: null == curve
          ? _value.curve
          : curve // ignore: cast_nullable_to_non_nullable
              as Curve,
    ));
  }
}

/// @nodoc

class _$StaggeredHorizontalSlideAnimationImpl extends StaggeredHorizontalSlideAnimation {
  _$StaggeredHorizontalSlideAnimationImpl({required this.offset, this.duration, this.delay, this.curve = Curves.ease})
      : super._();

  @override
  final double offset;
  @override
  final Duration? duration;
  @override
  final Duration? delay;
  @override
  @JsonKey()
  final Curve curve;

  @override
  String toString() {
    return 'StaggeredAnimationType.horizontalSlide(offset: $offset, duration: $duration, delay: $delay, curve: $curve)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaggeredHorizontalSlideAnimationImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.duration, duration) || other.duration == duration) &&
            (identical(other.delay, delay) || other.delay == delay) &&
            (identical(other.curve, curve) || other.curve == curve));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset, duration, delay, curve);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaggeredHorizontalSlideAnimationImplCopyWith<_$StaggeredHorizontalSlideAnimationImpl> get copyWith =>
      __$$StaggeredHorizontalSlideAnimationImplCopyWithImpl<_$StaggeredHorizontalSlideAnimationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration? duration, Duration? delay, Curve curve) fadeIn,
    required TResult Function(double offset, Duration? duration, Duration? delay, Curve curve) verticalSlide,
    required TResult Function(double offset, Duration? duration, Duration? delay, Curve curve) horizontalSlide,
    required TResult Function(double scale, Duration? duration, Duration? delay, Curve curve) scale,
    required TResult Function(FlipAxis flipAxis, Duration? duration, Duration? delay, Curve curve) flip,
  }) {
    return horizontalSlide(offset, duration, delay, curve);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration? duration, Duration? delay, Curve curve)? fadeIn,
    TResult? Function(double offset, Duration? duration, Duration? delay, Curve curve)? verticalSlide,
    TResult? Function(double offset, Duration? duration, Duration? delay, Curve curve)? horizontalSlide,
    TResult? Function(double scale, Duration? duration, Duration? delay, Curve curve)? scale,
    TResult? Function(FlipAxis flipAxis, Duration? duration, Duration? delay, Curve curve)? flip,
  }) {
    return horizontalSlide?.call(offset, duration, delay, curve);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration? duration, Duration? delay, Curve curve)? fadeIn,
    TResult Function(double offset, Duration? duration, Duration? delay, Curve curve)? verticalSlide,
    TResult Function(double offset, Duration? duration, Duration? delay, Curve curve)? horizontalSlide,
    TResult Function(double scale, Duration? duration, Duration? delay, Curve curve)? scale,
    TResult Function(FlipAxis flipAxis, Duration? duration, Duration? delay, Curve curve)? flip,
    required TResult orElse(),
  }) {
    if (horizontalSlide != null) {
      return horizontalSlide(offset, duration, delay, curve);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StaggeredFadeInAnimation value) fadeIn,
    required TResult Function(StaggeredVerticalSlideAnimation value) verticalSlide,
    required TResult Function(StaggeredHorizontalSlideAnimation value) horizontalSlide,
    required TResult Function(StaggeredScaleAnimation value) scale,
    required TResult Function(StaggeredFlipAnimation value) flip,
  }) {
    return horizontalSlide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StaggeredFadeInAnimation value)? fadeIn,
    TResult? Function(StaggeredVerticalSlideAnimation value)? verticalSlide,
    TResult? Function(StaggeredHorizontalSlideAnimation value)? horizontalSlide,
    TResult? Function(StaggeredScaleAnimation value)? scale,
    TResult? Function(StaggeredFlipAnimation value)? flip,
  }) {
    return horizontalSlide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StaggeredFadeInAnimation value)? fadeIn,
    TResult Function(StaggeredVerticalSlideAnimation value)? verticalSlide,
    TResult Function(StaggeredHorizontalSlideAnimation value)? horizontalSlide,
    TResult Function(StaggeredScaleAnimation value)? scale,
    TResult Function(StaggeredFlipAnimation value)? flip,
    required TResult orElse(),
  }) {
    if (horizontalSlide != null) {
      return horizontalSlide(this);
    }
    return orElse();
  }
}

abstract class StaggeredHorizontalSlideAnimation extends StaggeredAnimationType {
  factory StaggeredHorizontalSlideAnimation(
      {required final double offset,
      final Duration? duration,
      final Duration? delay,
      final Curve curve}) = _$StaggeredHorizontalSlideAnimationImpl;

  StaggeredHorizontalSlideAnimation._() : super._();

  double get offset;

  @override
  Duration? get duration;

  @override
  Duration? get delay;

  @override
  Curve get curve;

  @override
  @JsonKey(ignore: true)
  _$$StaggeredHorizontalSlideAnimationImplCopyWith<_$StaggeredHorizontalSlideAnimationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StaggeredScaleAnimationImplCopyWith<$Res> implements $StaggeredAnimationTypeCopyWith<$Res> {
  factory _$$StaggeredScaleAnimationImplCopyWith(
          _$StaggeredScaleAnimationImpl value, $Res Function(_$StaggeredScaleAnimationImpl) then) =
      __$$StaggeredScaleAnimationImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({double scale, Duration? duration, Duration? delay, Curve curve});
}

/// @nodoc
class __$$StaggeredScaleAnimationImplCopyWithImpl<$Res>
    extends _$StaggeredAnimationTypeCopyWithImpl<$Res, _$StaggeredScaleAnimationImpl>
    implements _$$StaggeredScaleAnimationImplCopyWith<$Res> {
  __$$StaggeredScaleAnimationImplCopyWithImpl(
      _$StaggeredScaleAnimationImpl _value, $Res Function(_$StaggeredScaleAnimationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scale = null,
    Object? duration = freezed,
    Object? delay = freezed,
    Object? curve = null,
  }) {
    return _then(_$StaggeredScaleAnimationImpl(
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      delay: freezed == delay
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as Duration?,
      curve: null == curve
          ? _value.curve
          : curve // ignore: cast_nullable_to_non_nullable
              as Curve,
    ));
  }
}

/// @nodoc

class _$StaggeredScaleAnimationImpl extends StaggeredScaleAnimation {
  _$StaggeredScaleAnimationImpl({required this.scale, this.duration, this.delay, this.curve = Curves.ease}) : super._();

  @override
  final double scale;
  @override
  final Duration? duration;
  @override
  final Duration? delay;
  @override
  @JsonKey()
  final Curve curve;

  @override
  String toString() {
    return 'StaggeredAnimationType.scale(scale: $scale, duration: $duration, delay: $delay, curve: $curve)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaggeredScaleAnimationImpl &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.duration, duration) || other.duration == duration) &&
            (identical(other.delay, delay) || other.delay == delay) &&
            (identical(other.curve, curve) || other.curve == curve));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scale, duration, delay, curve);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaggeredScaleAnimationImplCopyWith<_$StaggeredScaleAnimationImpl> get copyWith =>
      __$$StaggeredScaleAnimationImplCopyWithImpl<_$StaggeredScaleAnimationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration? duration, Duration? delay, Curve curve) fadeIn,
    required TResult Function(double offset, Duration? duration, Duration? delay, Curve curve) verticalSlide,
    required TResult Function(double offset, Duration? duration, Duration? delay, Curve curve) horizontalSlide,
    required TResult Function(double scale, Duration? duration, Duration? delay, Curve curve) scale,
    required TResult Function(FlipAxis flipAxis, Duration? duration, Duration? delay, Curve curve) flip,
  }) {
    return scale(this.scale, duration, delay, curve);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration? duration, Duration? delay, Curve curve)? fadeIn,
    TResult? Function(double offset, Duration? duration, Duration? delay, Curve curve)? verticalSlide,
    TResult? Function(double offset, Duration? duration, Duration? delay, Curve curve)? horizontalSlide,
    TResult? Function(double scale, Duration? duration, Duration? delay, Curve curve)? scale,
    TResult? Function(FlipAxis flipAxis, Duration? duration, Duration? delay, Curve curve)? flip,
  }) {
    return scale?.call(this.scale, duration, delay, curve);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration? duration, Duration? delay, Curve curve)? fadeIn,
    TResult Function(double offset, Duration? duration, Duration? delay, Curve curve)? verticalSlide,
    TResult Function(double offset, Duration? duration, Duration? delay, Curve curve)? horizontalSlide,
    TResult Function(double scale, Duration? duration, Duration? delay, Curve curve)? scale,
    TResult Function(FlipAxis flipAxis, Duration? duration, Duration? delay, Curve curve)? flip,
    required TResult orElse(),
  }) {
    if (scale != null) {
      return scale(this.scale, duration, delay, curve);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StaggeredFadeInAnimation value) fadeIn,
    required TResult Function(StaggeredVerticalSlideAnimation value) verticalSlide,
    required TResult Function(StaggeredHorizontalSlideAnimation value) horizontalSlide,
    required TResult Function(StaggeredScaleAnimation value) scale,
    required TResult Function(StaggeredFlipAnimation value) flip,
  }) {
    return scale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StaggeredFadeInAnimation value)? fadeIn,
    TResult? Function(StaggeredVerticalSlideAnimation value)? verticalSlide,
    TResult? Function(StaggeredHorizontalSlideAnimation value)? horizontalSlide,
    TResult? Function(StaggeredScaleAnimation value)? scale,
    TResult? Function(StaggeredFlipAnimation value)? flip,
  }) {
    return scale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StaggeredFadeInAnimation value)? fadeIn,
    TResult Function(StaggeredVerticalSlideAnimation value)? verticalSlide,
    TResult Function(StaggeredHorizontalSlideAnimation value)? horizontalSlide,
    TResult Function(StaggeredScaleAnimation value)? scale,
    TResult Function(StaggeredFlipAnimation value)? flip,
    required TResult orElse(),
  }) {
    if (scale != null) {
      return scale(this);
    }
    return orElse();
  }
}

abstract class StaggeredScaleAnimation extends StaggeredAnimationType {
  factory StaggeredScaleAnimation(
      {required final double scale,
      final Duration? duration,
      final Duration? delay,
      final Curve curve}) = _$StaggeredScaleAnimationImpl;

  StaggeredScaleAnimation._() : super._();

  double get scale;

  @override
  Duration? get duration;

  @override
  Duration? get delay;

  @override
  Curve get curve;

  @override
  @JsonKey(ignore: true)
  _$$StaggeredScaleAnimationImplCopyWith<_$StaggeredScaleAnimationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StaggeredFlipAnimationImplCopyWith<$Res> implements $StaggeredAnimationTypeCopyWith<$Res> {
  factory _$$StaggeredFlipAnimationImplCopyWith(
          _$StaggeredFlipAnimationImpl value, $Res Function(_$StaggeredFlipAnimationImpl) then) =
      __$$StaggeredFlipAnimationImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({FlipAxis flipAxis, Duration? duration, Duration? delay, Curve curve});
}

/// @nodoc
class __$$StaggeredFlipAnimationImplCopyWithImpl<$Res>
    extends _$StaggeredAnimationTypeCopyWithImpl<$Res, _$StaggeredFlipAnimationImpl>
    implements _$$StaggeredFlipAnimationImplCopyWith<$Res> {
  __$$StaggeredFlipAnimationImplCopyWithImpl(
      _$StaggeredFlipAnimationImpl _value, $Res Function(_$StaggeredFlipAnimationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flipAxis = null,
    Object? duration = freezed,
    Object? delay = freezed,
    Object? curve = null,
  }) {
    return _then(_$StaggeredFlipAnimationImpl(
      flipAxis: null == flipAxis
          ? _value.flipAxis
          : flipAxis // ignore: cast_nullable_to_non_nullable
              as FlipAxis,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      delay: freezed == delay
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as Duration?,
      curve: null == curve
          ? _value.curve
          : curve // ignore: cast_nullable_to_non_nullable
              as Curve,
    ));
  }
}

/// @nodoc

class _$StaggeredFlipAnimationImpl extends StaggeredFlipAnimation {
  _$StaggeredFlipAnimationImpl({required this.flipAxis, this.duration, this.delay, this.curve = Curves.ease})
      : super._();

  @override
  final FlipAxis flipAxis;
  @override
  final Duration? duration;
  @override
  final Duration? delay;
  @override
  @JsonKey()
  final Curve curve;

  @override
  String toString() {
    return 'StaggeredAnimationType.flip(flipAxis: $flipAxis, duration: $duration, delay: $delay, curve: $curve)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaggeredFlipAnimationImpl &&
            (identical(other.flipAxis, flipAxis) || other.flipAxis == flipAxis) &&
            (identical(other.duration, duration) || other.duration == duration) &&
            (identical(other.delay, delay) || other.delay == delay) &&
            (identical(other.curve, curve) || other.curve == curve));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flipAxis, duration, delay, curve);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaggeredFlipAnimationImplCopyWith<_$StaggeredFlipAnimationImpl> get copyWith =>
      __$$StaggeredFlipAnimationImplCopyWithImpl<_$StaggeredFlipAnimationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration? duration, Duration? delay, Curve curve) fadeIn,
    required TResult Function(double offset, Duration? duration, Duration? delay, Curve curve) verticalSlide,
    required TResult Function(double offset, Duration? duration, Duration? delay, Curve curve) horizontalSlide,
    required TResult Function(double scale, Duration? duration, Duration? delay, Curve curve) scale,
    required TResult Function(FlipAxis flipAxis, Duration? duration, Duration? delay, Curve curve) flip,
  }) {
    return flip(flipAxis, duration, delay, curve);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration? duration, Duration? delay, Curve curve)? fadeIn,
    TResult? Function(double offset, Duration? duration, Duration? delay, Curve curve)? verticalSlide,
    TResult? Function(double offset, Duration? duration, Duration? delay, Curve curve)? horizontalSlide,
    TResult? Function(double scale, Duration? duration, Duration? delay, Curve curve)? scale,
    TResult? Function(FlipAxis flipAxis, Duration? duration, Duration? delay, Curve curve)? flip,
  }) {
    return flip?.call(flipAxis, duration, delay, curve);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration? duration, Duration? delay, Curve curve)? fadeIn,
    TResult Function(double offset, Duration? duration, Duration? delay, Curve curve)? verticalSlide,
    TResult Function(double offset, Duration? duration, Duration? delay, Curve curve)? horizontalSlide,
    TResult Function(double scale, Duration? duration, Duration? delay, Curve curve)? scale,
    TResult Function(FlipAxis flipAxis, Duration? duration, Duration? delay, Curve curve)? flip,
    required TResult orElse(),
  }) {
    if (flip != null) {
      return flip(flipAxis, duration, delay, curve);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StaggeredFadeInAnimation value) fadeIn,
    required TResult Function(StaggeredVerticalSlideAnimation value) verticalSlide,
    required TResult Function(StaggeredHorizontalSlideAnimation value) horizontalSlide,
    required TResult Function(StaggeredScaleAnimation value) scale,
    required TResult Function(StaggeredFlipAnimation value) flip,
  }) {
    return flip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StaggeredFadeInAnimation value)? fadeIn,
    TResult? Function(StaggeredVerticalSlideAnimation value)? verticalSlide,
    TResult? Function(StaggeredHorizontalSlideAnimation value)? horizontalSlide,
    TResult? Function(StaggeredScaleAnimation value)? scale,
    TResult? Function(StaggeredFlipAnimation value)? flip,
  }) {
    return flip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StaggeredFadeInAnimation value)? fadeIn,
    TResult Function(StaggeredVerticalSlideAnimation value)? verticalSlide,
    TResult Function(StaggeredHorizontalSlideAnimation value)? horizontalSlide,
    TResult Function(StaggeredScaleAnimation value)? scale,
    TResult Function(StaggeredFlipAnimation value)? flip,
    required TResult orElse(),
  }) {
    if (flip != null) {
      return flip(this);
    }
    return orElse();
  }
}

abstract class StaggeredFlipAnimation extends StaggeredAnimationType {
  factory StaggeredFlipAnimation(
      {required final FlipAxis flipAxis,
      final Duration? duration,
      final Duration? delay,
      final Curve curve}) = _$StaggeredFlipAnimationImpl;

  StaggeredFlipAnimation._() : super._();

  FlipAxis get flipAxis;

  @override
  Duration? get duration;

  @override
  Duration? get delay;

  @override
  Curve get curve;

  @override
  @JsonKey(ignore: true)
  _$$StaggeredFlipAnimationImplCopyWith<_$StaggeredFlipAnimationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
