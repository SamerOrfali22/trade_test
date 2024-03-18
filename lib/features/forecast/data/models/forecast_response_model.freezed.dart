// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForecastResponseModel _$ForecastResponseModelFromJson(Map<String, dynamic> json) {
  return _ForecastResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ForecastResponseModel {
  String? get cod => throw _privateConstructorUsedError;

  int? get message => throw _privateConstructorUsedError;
  int? get cnt => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<ForecastModel>? get list => throw _privateConstructorUsedError;
  CityModel? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForecastResponseModelCopyWith<ForecastResponseModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastResponseModelCopyWith<$Res> {
  factory $ForecastResponseModelCopyWith(ForecastResponseModel value, $Res Function(ForecastResponseModel) then) =
      _$ForecastResponseModelCopyWithImpl<$Res, ForecastResponseModel>;

  @useResult
  $Res call(
      {String? cod, int? message, int? cnt, @JsonKey(defaultValue: []) List<ForecastModel>? list, CityModel? city});
}

/// @nodoc
class _$ForecastResponseModelCopyWithImpl<$Res, $Val extends ForecastResponseModel>
    implements $ForecastResponseModelCopyWith<$Res> {
  _$ForecastResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = freezed,
    Object? message = freezed,
    Object? cnt = freezed,
    Object? list = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      cod: freezed == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int?,
      cnt: freezed == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ForecastModel>?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastResponseModelImplCopyWith<$Res> implements $ForecastResponseModelCopyWith<$Res> {
  factory _$$ForecastResponseModelImplCopyWith(
          _$ForecastResponseModelImpl value, $Res Function(_$ForecastResponseModelImpl) then) =
      __$$ForecastResponseModelImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {String? cod, int? message, int? cnt, @JsonKey(defaultValue: []) List<ForecastModel>? list, CityModel? city});
}

/// @nodoc
class __$$ForecastResponseModelImplCopyWithImpl<$Res>
    extends _$ForecastResponseModelCopyWithImpl<$Res, _$ForecastResponseModelImpl>
    implements _$$ForecastResponseModelImplCopyWith<$Res> {
  __$$ForecastResponseModelImplCopyWithImpl(
      _$ForecastResponseModelImpl _value, $Res Function(_$ForecastResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = freezed,
    Object? message = freezed,
    Object? cnt = freezed,
    Object? list = freezed,
    Object? city = freezed,
  }) {
    return _then(_$ForecastResponseModelImpl(
      cod: freezed == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int?,
      cnt: freezed == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ForecastModel>?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastResponseModelImpl implements _ForecastResponseModel {
  const _$ForecastResponseModelImpl(
      {this.cod, this.message, this.cnt, @JsonKey(defaultValue: []) final List<ForecastModel>? list, this.city})
      : _list = list;

  factory _$ForecastResponseModelImpl.fromJson(Map<String, dynamic> json) => _$$ForecastResponseModelImplFromJson(json);

  @override
  final String? cod;
  @override
  final int? message;
  @override
  final int? cnt;
  final List<ForecastModel>? _list;

  @override
  @JsonKey(defaultValue: [])
  List<ForecastModel>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CityModel? city;

  @override
  String toString() {
    return 'ForecastResponseModel(cod: $cod, message: $message, cnt: $cnt, list: $list, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastResponseModelImpl &&
            (identical(other.cod, cod) || other.cod == cod) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cnt, cnt) || other.cnt == cnt) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cod, message, cnt, const DeepCollectionEquality().hash(_list), city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastResponseModelImplCopyWith<_$ForecastResponseModelImpl> get copyWith =>
      __$$ForecastResponseModelImplCopyWithImpl<_$ForecastResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ForecastResponseModel implements ForecastResponseModel {
  const factory _ForecastResponseModel(
      {final String? cod,
      final int? message,
      final int? cnt,
      @JsonKey(defaultValue: []) final List<ForecastModel>? list,
      final CityModel? city}) = _$ForecastResponseModelImpl;

  factory _ForecastResponseModel.fromJson(Map<String, dynamic> json) = _$ForecastResponseModelImpl.fromJson;

  @override
  String? get cod;

  @override
  int? get message;

  @override
  int? get cnt;

  @override
  @JsonKey(defaultValue: [])
  List<ForecastModel>? get list;

  @override
  CityModel? get city;

  @override
  @JsonKey(ignore: true)
  _$$ForecastResponseModelImplCopyWith<_$ForecastResponseModelImpl> get copyWith => throw _privateConstructorUsedError;
}
