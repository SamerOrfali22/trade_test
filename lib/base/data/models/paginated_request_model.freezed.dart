// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedRequestModel _$PaginatedRequestModelFromJson(Map<String, dynamic> json) {
  return _PaginatedRequestModel.fromJson(json);
}

/// @nodoc
mixin _$PaginatedRequestModel {
  int get page => throw _privateConstructorUsedError;

  @JsonKey(name: 'limit')
  int get pageSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedRequestModelCopyWith<PaginatedRequestModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedRequestModelCopyWith<$Res> {
  factory $PaginatedRequestModelCopyWith(PaginatedRequestModel value, $Res Function(PaginatedRequestModel) then) =
      _$PaginatedRequestModelCopyWithImpl<$Res, PaginatedRequestModel>;

  @useResult
  $Res call({int page, @JsonKey(name: 'limit') int pageSize});
}

/// @nodoc
class _$PaginatedRequestModelCopyWithImpl<$Res, $Val extends PaginatedRequestModel>
    implements $PaginatedRequestModelCopyWith<$Res> {
  _$PaginatedRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedRequestModelImplCopyWith<$Res> implements $PaginatedRequestModelCopyWith<$Res> {
  factory _$$PaginatedRequestModelImplCopyWith(
          _$PaginatedRequestModelImpl value, $Res Function(_$PaginatedRequestModelImpl) then) =
      __$$PaginatedRequestModelImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({int page, @JsonKey(name: 'limit') int pageSize});
}

/// @nodoc
class __$$PaginatedRequestModelImplCopyWithImpl<$Res>
    extends _$PaginatedRequestModelCopyWithImpl<$Res, _$PaginatedRequestModelImpl>
    implements _$$PaginatedRequestModelImplCopyWith<$Res> {
  __$$PaginatedRequestModelImplCopyWithImpl(
      _$PaginatedRequestModelImpl _value, $Res Function(_$PaginatedRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(_$PaginatedRequestModelImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedRequestModelImpl implements _PaginatedRequestModel {
  _$PaginatedRequestModelImpl(
      {required this.page, @JsonKey(name: 'limit') this.pageSize = AppConstants.paginationPageSize});

  factory _$PaginatedRequestModelImpl.fromJson(Map<String, dynamic> json) => _$$PaginatedRequestModelImplFromJson(json);

  @override
  final int page;
  @override
  @JsonKey(name: 'limit')
  final int pageSize;

  @override
  String toString() {
    return 'PaginatedRequestModel(page: $page, pageSize: $pageSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedRequestModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) || other.pageSize == pageSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedRequestModelImplCopyWith<_$PaginatedRequestModelImpl> get copyWith =>
      __$$PaginatedRequestModelImplCopyWithImpl<_$PaginatedRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedRequestModelImplToJson(
      this,
    );
  }
}

abstract class _PaginatedRequestModel implements PaginatedRequestModel {
  factory _PaginatedRequestModel({required final int page, @JsonKey(name: 'limit') final int pageSize}) =
      _$PaginatedRequestModelImpl;

  factory _PaginatedRequestModel.fromJson(Map<String, dynamic> json) = _$PaginatedRequestModelImpl.fromJson;

  @override
  int get page;

  @override
  @JsonKey(name: 'limit')
  int get pageSize;

  @override
  @JsonKey(ignore: true)
  _$$PaginatedRequestModelImplCopyWith<_$PaginatedRequestModelImpl> get copyWith => throw _privateConstructorUsedError;
}
