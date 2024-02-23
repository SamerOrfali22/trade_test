// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherResponseModel _$WeatherResponseModelFromJson(Map<String, dynamic> json) {
  return _WeatherResponseModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherResponseModel {
  CoordModel get coord => throw _privateConstructorUsedError;

  List<WeatherConditionModel> get weather => throw _privateConstructorUsedError;

  String get base => throw _privateConstructorUsedError;

  WeatherInfoModel get main => throw _privateConstructorUsedError;

  int get visibility => throw _privateConstructorUsedError;

  WindModel get wind => throw _privateConstructorUsedError;

  CloudsModel get clouds => throw _privateConstructorUsedError;

  int get dt => throw _privateConstructorUsedError;

  SunInfoModel get sys => throw _privateConstructorUsedError;

  int get timezone => throw _privateConstructorUsedError;

  int get id => throw _privateConstructorUsedError;

  String get name => throw _privateConstructorUsedError;

  int get cod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherResponseModelCopyWith<WeatherResponseModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResponseModelCopyWith<$Res> {
  factory $WeatherResponseModelCopyWith(WeatherResponseModel value, $Res Function(WeatherResponseModel) then) =
      _$WeatherResponseModelCopyWithImpl<$Res, WeatherResponseModel>;

  @useResult
  $Res call(
      {CoordModel coord,
      List<WeatherConditionModel> weather,
      String base,
      WeatherInfoModel main,
      int visibility,
      WindModel wind,
      CloudsModel clouds,
      int dt,
      SunInfoModel sys,
      int timezone,
      int id,
      String name,
      int cod});
}

/// @nodoc
class _$WeatherResponseModelCopyWithImpl<$Res, $Val extends WeatherResponseModel>
    implements $WeatherResponseModelCopyWith<$Res> {
  _$WeatherResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = null,
    Object? weather = null,
    Object? base = null,
    Object? main = null,
    Object? visibility = null,
    Object? wind = null,
    Object? clouds = null,
    Object? dt = null,
    Object? sys = null,
    Object? timezone = null,
    Object? id = null,
    Object? name = null,
    Object? cod = null,
  }) {
    return _then(_value.copyWith(
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as CoordModel,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherConditionModel>,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherInfoModel,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindModel,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as CloudsModel,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SunInfoModel,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cod: null == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherResponseModelImplCopyWith<$Res> implements $WeatherResponseModelCopyWith<$Res> {
  factory _$$WeatherResponseModelImplCopyWith(
          _$WeatherResponseModelImpl value, $Res Function(_$WeatherResponseModelImpl) then) =
      __$$WeatherResponseModelImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {CoordModel coord,
      List<WeatherConditionModel> weather,
      String base,
      WeatherInfoModel main,
      int visibility,
      WindModel wind,
      CloudsModel clouds,
      int dt,
      SunInfoModel sys,
      int timezone,
      int id,
      String name,
      int cod});
}

/// @nodoc
class __$$WeatherResponseModelImplCopyWithImpl<$Res>
    extends _$WeatherResponseModelCopyWithImpl<$Res, _$WeatherResponseModelImpl>
    implements _$$WeatherResponseModelImplCopyWith<$Res> {
  __$$WeatherResponseModelImplCopyWithImpl(
      _$WeatherResponseModelImpl _value, $Res Function(_$WeatherResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = null,
    Object? weather = null,
    Object? base = null,
    Object? main = null,
    Object? visibility = null,
    Object? wind = null,
    Object? clouds = null,
    Object? dt = null,
    Object? sys = null,
    Object? timezone = null,
    Object? id = null,
    Object? name = null,
    Object? cod = null,
  }) {
    return _then(_$WeatherResponseModelImpl(
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as CoordModel,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherConditionModel>,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherInfoModel,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindModel,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as CloudsModel,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SunInfoModel,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cod: null == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherResponseModelImpl implements _WeatherResponseModel {
  const _$WeatherResponseModelImpl(
      {required this.coord,
      required final List<WeatherConditionModel> weather,
      required this.base,
      required this.main,
      required this.visibility,
      required this.wind,
      required this.clouds,
      required this.dt,
      required this.sys,
      required this.timezone,
      required this.id,
      required this.name,
      required this.cod})
      : _weather = weather;

  factory _$WeatherResponseModelImpl.fromJson(Map<String, dynamic> json) => _$$WeatherResponseModelImplFromJson(json);

  @override
  final CoordModel coord;
  final List<WeatherConditionModel> _weather;

  @override
  List<WeatherConditionModel> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final String base;
  @override
  final WeatherInfoModel main;
  @override
  final int visibility;
  @override
  final WindModel wind;
  @override
  final CloudsModel clouds;
  @override
  final int dt;
  @override
  final SunInfoModel sys;
  @override
  final int timezone;
  @override
  final int id;
  @override
  final String name;
  @override
  final int cod;

  @override
  String toString() {
    return 'WeatherResponseModel(coord: $coord, weather: $weather, base: $base, main: $main, visibility: $visibility, wind: $wind, clouds: $clouds, dt: $dt, sys: $sys, timezone: $timezone, id: $id, name: $name, cod: $cod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherResponseModelImpl &&
            (identical(other.coord, coord) || other.coord == coord) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.visibility, visibility) || other.visibility == visibility) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.timezone, timezone) || other.timezone == timezone) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cod, cod) || other.cod == cod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, coord, const DeepCollectionEquality().hash(_weather), base, main,
      visibility, wind, clouds, dt, sys, timezone, id, name, cod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherResponseModelImplCopyWith<_$WeatherResponseModelImpl> get copyWith =>
      __$$WeatherResponseModelImplCopyWithImpl<_$WeatherResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherResponseModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherResponseModel implements WeatherResponseModel {
  const factory _WeatherResponseModel(
      {required final CoordModel coord,
      required final List<WeatherConditionModel> weather,
      required final String base,
      required final WeatherInfoModel main,
      required final int visibility,
      required final WindModel wind,
      required final CloudsModel clouds,
      required final int dt,
      required final SunInfoModel sys,
      required final int timezone,
      required final int id,
      required final String name,
      required final int cod}) = _$WeatherResponseModelImpl;

  factory _WeatherResponseModel.fromJson(Map<String, dynamic> json) = _$WeatherResponseModelImpl.fromJson;

  @override
  CoordModel get coord;

  @override
  List<WeatherConditionModel> get weather;

  @override
  String get base;

  @override
  WeatherInfoModel get main;

  @override
  int get visibility;

  @override
  WindModel get wind;

  @override
  CloudsModel get clouds;

  @override
  int get dt;

  @override
  SunInfoModel get sys;

  @override
  int get timezone;

  @override
  int get id;

  @override
  String get name;

  @override
  int get cod;

  @override
  @JsonKey(ignore: true)
  _$$WeatherResponseModelImplCopyWith<_$WeatherResponseModelImpl> get copyWith => throw _privateConstructorUsedError;
}
