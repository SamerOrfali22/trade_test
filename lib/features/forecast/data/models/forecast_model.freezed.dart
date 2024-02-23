// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastModel _$ForecastModelFromJson(Map<String, dynamic> json) {
  return _ForcastModel.fromJson(json);
}

/// @nodoc
mixin _$ForecastModel {
  int get dt => throw _privateConstructorUsedError;

  WeatherInfoModel get main => throw _privateConstructorUsedError;

  List<WeatherInfoModel> get weather => throw _privateConstructorUsedError;

  CloudsModel get clouds => throw _privateConstructorUsedError;

  WindModel get wind => throw _privateConstructorUsedError;

  int get visibility => throw _privateConstructorUsedError;

  double get pop => throw _privateConstructorUsedError;

  DateTime get dtTxt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForecastModelCopyWith<ForecastModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastModelCopyWith<$Res> {
  factory $ForecastModelCopyWith(ForecastModel value, $Res Function(ForecastModel) then) =
      _$ForecastModelCopyWithImpl<$Res, ForecastModel>;

  @useResult
  $Res call(
      {int dt,
      WeatherInfoModel main,
      List<WeatherInfoModel> weather,
      CloudsModel clouds,
      WindModel wind,
      int visibility,
      double pop,
      DateTime dtTxt});
}

/// @nodoc
class _$ForecastModelCopyWithImpl<$Res, $Val extends ForecastModel> implements $ForecastModelCopyWith<$Res> {
  _$ForecastModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? main = null,
    Object? weather = null,
    Object? clouds = null,
    Object? wind = null,
    Object? visibility = null,
    Object? pop = null,
    Object? dtTxt = null,
  }) {
    return _then(_value.copyWith(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherInfoModel,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfoModel>,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as CloudsModel,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindModel,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double,
      dtTxt: null == dtTxt
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForcastModelImplCopyWith<$Res> implements $ForecastModelCopyWith<$Res> {
  factory _$$ForcastModelImplCopyWith(_$ForcastModelImpl value, $Res Function(_$ForcastModelImpl) then) =
      __$$ForcastModelImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {int dt,
      WeatherInfoModel main,
      List<WeatherInfoModel> weather,
      CloudsModel clouds,
      WindModel wind,
      int visibility,
      double pop,
      DateTime dtTxt});
}

/// @nodoc
class __$$ForcastModelImplCopyWithImpl<$Res> extends _$ForecastModelCopyWithImpl<$Res, _$ForcastModelImpl>
    implements _$$ForcastModelImplCopyWith<$Res> {
  __$$ForcastModelImplCopyWithImpl(_$ForcastModelImpl _value, $Res Function(_$ForcastModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? main = null,
    Object? weather = null,
    Object? clouds = null,
    Object? wind = null,
    Object? visibility = null,
    Object? pop = null,
    Object? dtTxt = null,
  }) {
    return _then(_$ForcastModelImpl(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherInfoModel,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfoModel>,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as CloudsModel,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindModel,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double,
      dtTxt: null == dtTxt
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForcastModelImpl implements _ForcastModel {
  const _$ForcastModelImpl(
      {required this.dt,
      required this.main,
      required final List<WeatherInfoModel> weather,
      required this.clouds,
      required this.wind,
      required this.visibility,
      required this.pop,
      required this.dtTxt})
      : _weather = weather;

  factory _$ForcastModelImpl.fromJson(Map<String, dynamic> json) => _$$ForcastModelImplFromJson(json);

  @override
  final int dt;
  @override
  final WeatherInfoModel main;
  final List<WeatherInfoModel> _weather;

  @override
  List<WeatherInfoModel> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final CloudsModel clouds;
  @override
  final WindModel wind;
  @override
  final int visibility;
  @override
  final double pop;
  @override
  final DateTime dtTxt;

  @override
  String toString() {
    return 'ForecastModel(dt: $dt, main: $main, weather: $weather, clouds: $clouds, wind: $wind, visibility: $visibility, pop: $pop, dtTxt: $dtTxt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForcastModelImpl &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.visibility, visibility) || other.visibility == visibility) &&
            (identical(other.pop, pop) || other.pop == pop) &&
            (identical(other.dtTxt, dtTxt) || other.dtTxt == dtTxt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, dt, main, const DeepCollectionEquality().hash(_weather), clouds, wind, visibility, pop, dtTxt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForcastModelImplCopyWith<_$ForcastModelImpl> get copyWith =>
      __$$ForcastModelImplCopyWithImpl<_$ForcastModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForcastModelImplToJson(
      this,
    );
  }
}

abstract class _ForcastModel implements ForecastModel {
  const factory _ForcastModel(
      {required final int dt,
      required final WeatherInfoModel main,
      required final List<WeatherInfoModel> weather,
      required final CloudsModel clouds,
      required final WindModel wind,
      required final int visibility,
      required final double pop,
      required final DateTime dtTxt}) = _$ForcastModelImpl;

  factory _ForcastModel.fromJson(Map<String, dynamic> json) = _$ForcastModelImpl.fromJson;

  @override
  int get dt;

  @override
  WeatherInfoModel get main;

  @override
  List<WeatherInfoModel> get weather;

  @override
  CloudsModel get clouds;

  @override
  WindModel get wind;

  @override
  int get visibility;

  @override
  double get pop;

  @override
  DateTime get dtTxt;

  @override
  @JsonKey(ignore: true)
  _$$ForcastModelImplCopyWith<_$ForcastModelImpl> get copyWith => throw _privateConstructorUsedError;
}
