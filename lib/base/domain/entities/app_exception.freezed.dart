// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppExceptionModel _$AppExceptionModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'general':
      return AppGeneralException.fromJson(json);
    case 'conflict':
      return AppConflictException.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'runtimeType', 'AppExceptionModel', 'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AppExceptionModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int status, String message) general,
    required TResult Function(int status, String message) conflict,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int status, String message)? general,
    TResult? Function(int status, String message)? conflict,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int status, String message)? general,
    TResult Function(int status, String message)? conflict,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppGeneralException value) general,
    required TResult Function(AppConflictException value) conflict,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppGeneralException value)? general,
    TResult? Function(AppConflictException value)? conflict,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppGeneralException value)? general,
    TResult Function(AppConflictException value)? conflict,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppExceptionModelCopyWith<AppExceptionModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppExceptionModelCopyWith<$Res> {
  factory $AppExceptionModelCopyWith(AppExceptionModel value, $Res Function(AppExceptionModel) then) =
      _$AppExceptionModelCopyWithImpl<$Res, AppExceptionModel>;
  @useResult
  $Res call({int status, String message});
}

/// @nodoc
class _$AppExceptionModelCopyWithImpl<$Res, $Val extends AppExceptionModel>
    implements $AppExceptionModelCopyWith<$Res> {
  _$AppExceptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppGeneralExceptionImplCopyWith<$Res> implements $AppExceptionModelCopyWith<$Res> {
  factory _$$AppGeneralExceptionImplCopyWith(
          _$AppGeneralExceptionImpl value, $Res Function(_$AppGeneralExceptionImpl) then) =
      __$$AppGeneralExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message});
}

/// @nodoc
class __$$AppGeneralExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionModelCopyWithImpl<$Res, _$AppGeneralExceptionImpl>
    implements _$$AppGeneralExceptionImplCopyWith<$Res> {
  __$$AppGeneralExceptionImplCopyWithImpl(
      _$AppGeneralExceptionImpl _value, $Res Function(_$AppGeneralExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$AppGeneralExceptionImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppGeneralExceptionImpl extends AppGeneralException {
  _$AppGeneralExceptionImpl({required this.status, required this.message, final String? $type})
      : $type = $type ?? 'general',
        super._();

  factory _$AppGeneralExceptionImpl.fromJson(Map<String, dynamic> json) => _$$AppGeneralExceptionImplFromJson(json);

  @override
  final int status;
  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppExceptionModel.general(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppGeneralExceptionImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppGeneralExceptionImplCopyWith<_$AppGeneralExceptionImpl> get copyWith =>
      __$$AppGeneralExceptionImplCopyWithImpl<_$AppGeneralExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int status, String message) general,
    required TResult Function(int status, String message) conflict,
  }) {
    return general(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int status, String message)? general,
    TResult? Function(int status, String message)? conflict,
  }) {
    return general?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int status, String message)? general,
    TResult Function(int status, String message)? conflict,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(status, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppGeneralException value) general,
    required TResult Function(AppConflictException value) conflict,
  }) {
    return general(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppGeneralException value)? general,
    TResult? Function(AppConflictException value)? conflict,
  }) {
    return general?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppGeneralException value)? general,
    TResult Function(AppConflictException value)? conflict,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppGeneralExceptionImplToJson(
      this,
    );
  }
}

abstract class AppGeneralException extends AppExceptionModel implements TranslatableException {
  factory AppGeneralException({required final int status, required final String message}) = _$AppGeneralExceptionImpl;
  AppGeneralException._() : super._();

  factory AppGeneralException.fromJson(Map<String, dynamic> json) = _$AppGeneralExceptionImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$AppGeneralExceptionImplCopyWith<_$AppGeneralExceptionImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppConflictExceptionImplCopyWith<$Res> implements $AppExceptionModelCopyWith<$Res> {
  factory _$$AppConflictExceptionImplCopyWith(
          _$AppConflictExceptionImpl value, $Res Function(_$AppConflictExceptionImpl) then) =
      __$$AppConflictExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message});
}

/// @nodoc
class __$$AppConflictExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionModelCopyWithImpl<$Res, _$AppConflictExceptionImpl>
    implements _$$AppConflictExceptionImplCopyWith<$Res> {
  __$$AppConflictExceptionImplCopyWithImpl(
      _$AppConflictExceptionImpl _value, $Res Function(_$AppConflictExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$AppConflictExceptionImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppConflictExceptionImpl extends AppConflictException {
  _$AppConflictExceptionImpl({required this.status, required this.message, final String? $type})
      : $type = $type ?? 'conflict',
        super._();

  factory _$AppConflictExceptionImpl.fromJson(Map<String, dynamic> json) => _$$AppConflictExceptionImplFromJson(json);

  @override
  final int status;
  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppExceptionModel.conflict(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppConflictExceptionImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppConflictExceptionImplCopyWith<_$AppConflictExceptionImpl> get copyWith =>
      __$$AppConflictExceptionImplCopyWithImpl<_$AppConflictExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int status, String message) general,
    required TResult Function(int status, String message) conflict,
  }) {
    return conflict(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int status, String message)? general,
    TResult? Function(int status, String message)? conflict,
  }) {
    return conflict?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int status, String message)? general,
    TResult Function(int status, String message)? conflict,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict(status, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppGeneralException value) general,
    required TResult Function(AppConflictException value) conflict,
  }) {
    return conflict(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppGeneralException value)? general,
    TResult? Function(AppConflictException value)? conflict,
  }) {
    return conflict?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppGeneralException value)? general,
    TResult Function(AppConflictException value)? conflict,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppConflictExceptionImplToJson(
      this,
    );
  }
}

abstract class AppConflictException extends AppExceptionModel implements TranslatableException {
  factory AppConflictException({required final int status, required final String message}) = _$AppConflictExceptionImpl;
  AppConflictException._() : super._();

  factory AppConflictException.fromJson(Map<String, dynamic> json) = _$AppConflictExceptionImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$AppConflictExceptionImplCopyWith<_$AppConflictExceptionImpl> get copyWith => throw _privateConstructorUsedError;
}
