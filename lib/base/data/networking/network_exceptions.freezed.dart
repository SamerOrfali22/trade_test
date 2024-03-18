// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NetworkException _$NetworkExceptionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'unauthorizedRequest':
      return UnauthorizedRequest.fromJson(json);
    case 'badRequest':
      return BadRequest.fromJson(json);
    case 'notFound':
      return NotFound.fromJson(json);
    case 'methodNotAllowed':
      return MethodNotAllowed.fromJson(json);
    case 'notAcceptable':
      return NotAcceptable.fromJson(json);
    case 'conflict':
      return Conflict.fromJson(json);
    case 'internalServerError':
      return InternalServerError.fromJson(json);
    case 'notImplemented':
      return NotImplemented.fromJson(json);
    case 'serviceUnavailable':
      return ServiceUnavailable.fromJson(json);
    case 'noInternetConnection':
      return NoInternetConnection.fromJson(json);
    case 'formatException':
      return NetworkFormatException.fromJson(json);
    case 'unableToProcess':
      return UnableToProcess.fromJson(json);
    case 'unexpectedError':
      return UnexpectedError.fromJson(json);
    case 'defaultError':
      return DefaultError.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'runtimeType', 'NetworkException', 'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$NetworkException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic body) unauthorizedRequest,
    required TResult Function() badRequest,
    required TResult Function(String reason) notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() conflict,
    required TResult Function() internalServerError,
    required TResult Function() notImplemented,
    required TResult Function() serviceUnavailable,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
    required TResult Function(int? code, String? error) defaultError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic body)? unauthorizedRequest,
    TResult? Function()? badRequest,
    TResult? Function(String reason)? notFound,
    TResult? Function()? methodNotAllowed,
    TResult? Function()? notAcceptable,
    TResult? Function()? conflict,
    TResult? Function()? internalServerError,
    TResult? Function()? notImplemented,
    TResult? Function()? serviceUnavailable,
    TResult? Function()? noInternetConnection,
    TResult? Function()? formatException,
    TResult? Function()? unableToProcess,
    TResult? Function()? unexpectedError,
    TResult? Function(int? code, String? error)? defaultError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic body)? unauthorizedRequest,
    TResult Function()? badRequest,
    TResult Function(String reason)? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? conflict,
    TResult Function()? internalServerError,
    TResult Function()? notImplemented,
    TResult Function()? serviceUnavailable,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    TResult Function(int? code, String? error)? defaultError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequest value) unauthorizedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAcceptable value) notAcceptable,
    required TResult Function(Conflict value) conflict,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NotImplemented value) notImplemented,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NetworkFormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefaultError value) defaultError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(MethodNotAllowed value)? methodNotAllowed,
    TResult? Function(NotAcceptable value)? notAcceptable,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NotImplemented value)? notImplemented,
    TResult? Function(ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NetworkFormatException value)? formatException,
    TResult? Function(UnableToProcess value)? unableToProcess,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(DefaultError value)? defaultError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAcceptable value)? notAcceptable,
    TResult Function(Conflict value)? conflict,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NotImplemented value)? notImplemented,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NetworkFormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefaultError value)? defaultError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkExceptionCopyWith<$Res> {
  factory $NetworkExceptionCopyWith(NetworkException value, $Res Function(NetworkException) then) =
      _$NetworkExceptionCopyWithImpl<$Res, NetworkException>;
}

/// @nodoc
class _$NetworkExceptionCopyWithImpl<$Res, $Val extends NetworkException> implements $NetworkExceptionCopyWith<$Res> {
  _$NetworkExceptionCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnauthorizedRequestImplCopyWith<$Res> {
  factory _$$UnauthorizedRequestImplCopyWith(
          _$UnauthorizedRequestImpl value, $Res Function(_$UnauthorizedRequestImpl) then) =
      __$$UnauthorizedRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic body});
}

/// @nodoc
class __$$UnauthorizedRequestImplCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res, _$UnauthorizedRequestImpl>
    implements _$$UnauthorizedRequestImplCopyWith<$Res> {
  __$$UnauthorizedRequestImplCopyWithImpl(
      _$UnauthorizedRequestImpl _value, $Res Function(_$UnauthorizedRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(_$UnauthorizedRequestImpl(
      freezed == body ? _value.body! : body,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnauthorizedRequestImpl extends UnauthorizedRequest {
  const _$UnauthorizedRequestImpl(this.body, {final String? $type})
      : $type = $type ?? 'unauthorizedRequest',
        super._();

  factory _$UnauthorizedRequestImpl.fromJson(Map<String, dynamic> json) => _$$UnauthorizedRequestImplFromJson(json);

  @override
  final dynamic body;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NetworkException.unauthorizedRequest(body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedRequestImpl &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedRequestImplCopyWith<_$UnauthorizedRequestImpl> get copyWith =>
      __$$UnauthorizedRequestImplCopyWithImpl<_$UnauthorizedRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic body) unauthorizedRequest,
    required TResult Function() badRequest,
    required TResult Function(String reason) notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() conflict,
    required TResult Function() internalServerError,
    required TResult Function() notImplemented,
    required TResult Function() serviceUnavailable,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
    required TResult Function(int? code, String? error) defaultError,
  }) {
    return unauthorizedRequest(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic body)? unauthorizedRequest,
    TResult? Function()? badRequest,
    TResult? Function(String reason)? notFound,
    TResult? Function()? methodNotAllowed,
    TResult? Function()? notAcceptable,
    TResult? Function()? conflict,
    TResult? Function()? internalServerError,
    TResult? Function()? notImplemented,
    TResult? Function()? serviceUnavailable,
    TResult? Function()? noInternetConnection,
    TResult? Function()? formatException,
    TResult? Function()? unableToProcess,
    TResult? Function()? unexpectedError,
    TResult? Function(int? code, String? error)? defaultError,
  }) {
    return unauthorizedRequest?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic body)? unauthorizedRequest,
    TResult Function()? badRequest,
    TResult Function(String reason)? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? conflict,
    TResult Function()? internalServerError,
    TResult Function()? notImplemented,
    TResult Function()? serviceUnavailable,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    TResult Function(int? code, String? error)? defaultError,
    required TResult orElse(),
  }) {
    if (unauthorizedRequest != null) {
      return unauthorizedRequest(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequest value) unauthorizedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAcceptable value) notAcceptable,
    required TResult Function(Conflict value) conflict,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NotImplemented value) notImplemented,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NetworkFormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefaultError value) defaultError,
  }) {
    return unauthorizedRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(MethodNotAllowed value)? methodNotAllowed,
    TResult? Function(NotAcceptable value)? notAcceptable,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NotImplemented value)? notImplemented,
    TResult? Function(ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NetworkFormatException value)? formatException,
    TResult? Function(UnableToProcess value)? unableToProcess,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(DefaultError value)? defaultError,
  }) {
    return unauthorizedRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAcceptable value)? notAcceptable,
    TResult Function(Conflict value)? conflict,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NotImplemented value)? notImplemented,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NetworkFormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefaultError value)? defaultError,
    required TResult orElse(),
  }) {
    if (unauthorizedRequest != null) {
      return unauthorizedRequest(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnauthorizedRequestImplToJson(
      this,
    );
  }
}

abstract class UnauthorizedRequest extends NetworkException implements TranslatableException {
  const factory UnauthorizedRequest(final dynamic body) = _$UnauthorizedRequestImpl;
  const UnauthorizedRequest._() : super._();

  factory UnauthorizedRequest.fromJson(Map<String, dynamic> json) = _$UnauthorizedRequestImpl.fromJson;

  dynamic get body;
  @JsonKey(ignore: true)
  _$$UnauthorizedRequestImplCopyWith<_$UnauthorizedRequestImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadRequestImplCopyWith<$Res> {
  factory _$$BadRequestImplCopyWith(_$BadRequestImpl value, $Res Function(_$BadRequestImpl) then) =
      __$$BadRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BadRequestImplCopyWithImpl<$Res> extends _$NetworkExceptionCopyWithImpl<$Res, _$BadRequestImpl>
    implements _$$BadRequestImplCopyWith<$Res> {
  __$$BadRequestImplCopyWithImpl(_$BadRequestImpl _value, $Res Function(_$BadRequestImpl) _then) : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$BadRequestImpl extends BadRequest {
  const _$BadRequestImpl({final String? $type})
      : $type = $type ?? 'badRequest',
        super._();

  factory _$BadRequestImpl.fromJson(Map<String, dynamic> json) => _$$BadRequestImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NetworkException.badRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$BadRequestImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic body) unauthorizedRequest,
    required TResult Function() badRequest,
    required TResult Function(String reason) notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() conflict,
    required TResult Function() internalServerError,
    required TResult Function() notImplemented,
    required TResult Function() serviceUnavailable,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
    required TResult Function(int? code, String? error) defaultError,
  }) {
    return badRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic body)? unauthorizedRequest,
    TResult? Function()? badRequest,
    TResult? Function(String reason)? notFound,
    TResult? Function()? methodNotAllowed,
    TResult? Function()? notAcceptable,
    TResult? Function()? conflict,
    TResult? Function()? internalServerError,
    TResult? Function()? notImplemented,
    TResult? Function()? serviceUnavailable,
    TResult? Function()? noInternetConnection,
    TResult? Function()? formatException,
    TResult? Function()? unableToProcess,
    TResult? Function()? unexpectedError,
    TResult? Function(int? code, String? error)? defaultError,
  }) {
    return badRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic body)? unauthorizedRequest,
    TResult Function()? badRequest,
    TResult Function(String reason)? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? conflict,
    TResult Function()? internalServerError,
    TResult Function()? notImplemented,
    TResult Function()? serviceUnavailable,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    TResult Function(int? code, String? error)? defaultError,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequest value) unauthorizedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAcceptable value) notAcceptable,
    required TResult Function(Conflict value) conflict,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NotImplemented value) notImplemented,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NetworkFormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefaultError value) defaultError,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(MethodNotAllowed value)? methodNotAllowed,
    TResult? Function(NotAcceptable value)? notAcceptable,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NotImplemented value)? notImplemented,
    TResult? Function(ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NetworkFormatException value)? formatException,
    TResult? Function(UnableToProcess value)? unableToProcess,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(DefaultError value)? defaultError,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAcceptable value)? notAcceptable,
    TResult Function(Conflict value)? conflict,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NotImplemented value)? notImplemented,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NetworkFormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefaultError value)? defaultError,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BadRequestImplToJson(
      this,
    );
  }
}

abstract class BadRequest extends NetworkException implements TranslatableException {
  const factory BadRequest() = _$BadRequestImpl;
  const BadRequest._() : super._();

  factory BadRequest.fromJson(Map<String, dynamic> json) = _$BadRequestImpl.fromJson;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(_$NotFoundImpl value, $Res Function(_$NotFoundImpl) then) =
      __$$NotFoundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res> extends _$NetworkExceptionCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(_$NotFoundImpl _value, $Res Function(_$NotFoundImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_$NotFoundImpl(
      null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotFoundImpl extends NotFound {
  const _$NotFoundImpl(this.reason, {final String? $type})
      : $type = $type ?? 'notFound',
        super._();

  factory _$NotFoundImpl.fromJson(Map<String, dynamic> json) => _$$NotFoundImplFromJson(json);

  @override
  final String reason;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NetworkException.notFound(reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundImplCopyWith<_$NotFoundImpl> get copyWith =>
      __$$NotFoundImplCopyWithImpl<_$NotFoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic body) unauthorizedRequest,
    required TResult Function() badRequest,
    required TResult Function(String reason) notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() conflict,
    required TResult Function() internalServerError,
    required TResult Function() notImplemented,
    required TResult Function() serviceUnavailable,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
    required TResult Function(int? code, String? error) defaultError,
  }) {
    return notFound(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic body)? unauthorizedRequest,
    TResult? Function()? badRequest,
    TResult? Function(String reason)? notFound,
    TResult? Function()? methodNotAllowed,
    TResult? Function()? notAcceptable,
    TResult? Function()? conflict,
    TResult? Function()? internalServerError,
    TResult? Function()? notImplemented,
    TResult? Function()? serviceUnavailable,
    TResult? Function()? noInternetConnection,
    TResult? Function()? formatException,
    TResult? Function()? unableToProcess,
    TResult? Function()? unexpectedError,
    TResult? Function(int? code, String? error)? defaultError,
  }) {
    return notFound?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic body)? unauthorizedRequest,
    TResult Function()? badRequest,
    TResult Function(String reason)? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? conflict,
    TResult Function()? internalServerError,
    TResult Function()? notImplemented,
    TResult Function()? serviceUnavailable,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    TResult Function(int? code, String? error)? defaultError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequest value) unauthorizedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAcceptable value) notAcceptable,
    required TResult Function(Conflict value) conflict,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NotImplemented value) notImplemented,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NetworkFormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefaultError value) defaultError,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(MethodNotAllowed value)? methodNotAllowed,
    TResult? Function(NotAcceptable value)? notAcceptable,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NotImplemented value)? notImplemented,
    TResult? Function(ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NetworkFormatException value)? formatException,
    TResult? Function(UnableToProcess value)? unableToProcess,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(DefaultError value)? defaultError,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAcceptable value)? notAcceptable,
    TResult Function(Conflict value)? conflict,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NotImplemented value)? notImplemented,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NetworkFormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefaultError value)? defaultError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NotFoundImplToJson(
      this,
    );
  }
}

abstract class NotFound extends NetworkException implements TranslatableException {
  const factory NotFound(final String reason) = _$NotFoundImpl;
  const NotFound._() : super._();

  factory NotFound.fromJson(Map<String, dynamic> json) = _$NotFoundImpl.fromJson;

  String get reason;
  @JsonKey(ignore: true)
  _$$NotFoundImplCopyWith<_$NotFoundImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MethodNotAllowedImplCopyWith<$Res> {
  factory _$$MethodNotAllowedImplCopyWith(_$MethodNotAllowedImpl value, $Res Function(_$MethodNotAllowedImpl) then) =
      __$$MethodNotAllowedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MethodNotAllowedImplCopyWithImpl<$Res> extends _$NetworkExceptionCopyWithImpl<$Res, _$MethodNotAllowedImpl>
    implements _$$MethodNotAllowedImplCopyWith<$Res> {
  __$$MethodNotAllowedImplCopyWithImpl(_$MethodNotAllowedImpl _value, $Res Function(_$MethodNotAllowedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$MethodNotAllowedImpl extends MethodNotAllowed {
  const _$MethodNotAllowedImpl({final String? $type})
      : $type = $type ?? 'methodNotAllowed',
        super._();

  factory _$MethodNotAllowedImpl.fromJson(Map<String, dynamic> json) => _$$MethodNotAllowedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NetworkException.methodNotAllowed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$MethodNotAllowedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic body) unauthorizedRequest,
    required TResult Function() badRequest,
    required TResult Function(String reason) notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() conflict,
    required TResult Function() internalServerError,
    required TResult Function() notImplemented,
    required TResult Function() serviceUnavailable,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
    required TResult Function(int? code, String? error) defaultError,
  }) {
    return methodNotAllowed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic body)? unauthorizedRequest,
    TResult? Function()? badRequest,
    TResult? Function(String reason)? notFound,
    TResult? Function()? methodNotAllowed,
    TResult? Function()? notAcceptable,
    TResult? Function()? conflict,
    TResult? Function()? internalServerError,
    TResult? Function()? notImplemented,
    TResult? Function()? serviceUnavailable,
    TResult? Function()? noInternetConnection,
    TResult? Function()? formatException,
    TResult? Function()? unableToProcess,
    TResult? Function()? unexpectedError,
    TResult? Function(int? code, String? error)? defaultError,
  }) {
    return methodNotAllowed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic body)? unauthorizedRequest,
    TResult Function()? badRequest,
    TResult Function(String reason)? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? conflict,
    TResult Function()? internalServerError,
    TResult Function()? notImplemented,
    TResult Function()? serviceUnavailable,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    TResult Function(int? code, String? error)? defaultError,
    required TResult orElse(),
  }) {
    if (methodNotAllowed != null) {
      return methodNotAllowed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequest value) unauthorizedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAcceptable value) notAcceptable,
    required TResult Function(Conflict value) conflict,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NotImplemented value) notImplemented,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NetworkFormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefaultError value) defaultError,
  }) {
    return methodNotAllowed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(MethodNotAllowed value)? methodNotAllowed,
    TResult? Function(NotAcceptable value)? notAcceptable,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NotImplemented value)? notImplemented,
    TResult? Function(ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NetworkFormatException value)? formatException,
    TResult? Function(UnableToProcess value)? unableToProcess,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(DefaultError value)? defaultError,
  }) {
    return methodNotAllowed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAcceptable value)? notAcceptable,
    TResult Function(Conflict value)? conflict,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NotImplemented value)? notImplemented,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NetworkFormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefaultError value)? defaultError,
    required TResult orElse(),
  }) {
    if (methodNotAllowed != null) {
      return methodNotAllowed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MethodNotAllowedImplToJson(
      this,
    );
  }
}

abstract class MethodNotAllowed extends NetworkException implements TranslatableException {
  const factory MethodNotAllowed() = _$MethodNotAllowedImpl;
  const MethodNotAllowed._() : super._();

  factory MethodNotAllowed.fromJson(Map<String, dynamic> json) = _$MethodNotAllowedImpl.fromJson;
}

/// @nodoc
abstract class _$$NotAcceptableImplCopyWith<$Res> {
  factory _$$NotAcceptableImplCopyWith(_$NotAcceptableImpl value, $Res Function(_$NotAcceptableImpl) then) =
      __$$NotAcceptableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotAcceptableImplCopyWithImpl<$Res> extends _$NetworkExceptionCopyWithImpl<$Res, _$NotAcceptableImpl>
    implements _$$NotAcceptableImplCopyWith<$Res> {
  __$$NotAcceptableImplCopyWithImpl(_$NotAcceptableImpl _value, $Res Function(_$NotAcceptableImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$NotAcceptableImpl extends NotAcceptable {
  const _$NotAcceptableImpl({final String? $type})
      : $type = $type ?? 'notAcceptable',
        super._();

  factory _$NotAcceptableImpl.fromJson(Map<String, dynamic> json) => _$$NotAcceptableImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NetworkException.notAcceptable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$NotAcceptableImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic body) unauthorizedRequest,
    required TResult Function() badRequest,
    required TResult Function(String reason) notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() conflict,
    required TResult Function() internalServerError,
    required TResult Function() notImplemented,
    required TResult Function() serviceUnavailable,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
    required TResult Function(int? code, String? error) defaultError,
  }) {
    return notAcceptable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic body)? unauthorizedRequest,
    TResult? Function()? badRequest,
    TResult? Function(String reason)? notFound,
    TResult? Function()? methodNotAllowed,
    TResult? Function()? notAcceptable,
    TResult? Function()? conflict,
    TResult? Function()? internalServerError,
    TResult? Function()? notImplemented,
    TResult? Function()? serviceUnavailable,
    TResult? Function()? noInternetConnection,
    TResult? Function()? formatException,
    TResult? Function()? unableToProcess,
    TResult? Function()? unexpectedError,
    TResult? Function(int? code, String? error)? defaultError,
  }) {
    return notAcceptable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic body)? unauthorizedRequest,
    TResult Function()? badRequest,
    TResult Function(String reason)? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? conflict,
    TResult Function()? internalServerError,
    TResult Function()? notImplemented,
    TResult Function()? serviceUnavailable,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    TResult Function(int? code, String? error)? defaultError,
    required TResult orElse(),
  }) {
    if (notAcceptable != null) {
      return notAcceptable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequest value) unauthorizedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAcceptable value) notAcceptable,
    required TResult Function(Conflict value) conflict,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NotImplemented value) notImplemented,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NetworkFormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefaultError value) defaultError,
  }) {
    return notAcceptable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(MethodNotAllowed value)? methodNotAllowed,
    TResult? Function(NotAcceptable value)? notAcceptable,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NotImplemented value)? notImplemented,
    TResult? Function(ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NetworkFormatException value)? formatException,
    TResult? Function(UnableToProcess value)? unableToProcess,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(DefaultError value)? defaultError,
  }) {
    return notAcceptable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAcceptable value)? notAcceptable,
    TResult Function(Conflict value)? conflict,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NotImplemented value)? notImplemented,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NetworkFormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefaultError value)? defaultError,
    required TResult orElse(),
  }) {
    if (notAcceptable != null) {
      return notAcceptable(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NotAcceptableImplToJson(
      this,
    );
  }
}

abstract class NotAcceptable extends NetworkException implements TranslatableException {
  const factory NotAcceptable() = _$NotAcceptableImpl;
  const NotAcceptable._() : super._();

  factory NotAcceptable.fromJson(Map<String, dynamic> json) = _$NotAcceptableImpl.fromJson;
}

/// @nodoc
abstract class _$$ConflictImplCopyWith<$Res> {
  factory _$$ConflictImplCopyWith(_$ConflictImpl value, $Res Function(_$ConflictImpl) then) =
      __$$ConflictImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConflictImplCopyWithImpl<$Res> extends _$NetworkExceptionCopyWithImpl<$Res, _$ConflictImpl>
    implements _$$ConflictImplCopyWith<$Res> {
  __$$ConflictImplCopyWithImpl(_$ConflictImpl _value, $Res Function(_$ConflictImpl) _then) : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ConflictImpl extends Conflict {
  const _$ConflictImpl({final String? $type})
      : $type = $type ?? 'conflict',
        super._();

  factory _$ConflictImpl.fromJson(Map<String, dynamic> json) => _$$ConflictImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NetworkException.conflict()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ConflictImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic body) unauthorizedRequest,
    required TResult Function() badRequest,
    required TResult Function(String reason) notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() conflict,
    required TResult Function() internalServerError,
    required TResult Function() notImplemented,
    required TResult Function() serviceUnavailable,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
    required TResult Function(int? code, String? error) defaultError,
  }) {
    return conflict();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic body)? unauthorizedRequest,
    TResult? Function()? badRequest,
    TResult? Function(String reason)? notFound,
    TResult? Function()? methodNotAllowed,
    TResult? Function()? notAcceptable,
    TResult? Function()? conflict,
    TResult? Function()? internalServerError,
    TResult? Function()? notImplemented,
    TResult? Function()? serviceUnavailable,
    TResult? Function()? noInternetConnection,
    TResult? Function()? formatException,
    TResult? Function()? unableToProcess,
    TResult? Function()? unexpectedError,
    TResult? Function(int? code, String? error)? defaultError,
  }) {
    return conflict?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic body)? unauthorizedRequest,
    TResult Function()? badRequest,
    TResult Function(String reason)? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? conflict,
    TResult Function()? internalServerError,
    TResult Function()? notImplemented,
    TResult Function()? serviceUnavailable,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    TResult Function(int? code, String? error)? defaultError,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequest value) unauthorizedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAcceptable value) notAcceptable,
    required TResult Function(Conflict value) conflict,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NotImplemented value) notImplemented,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NetworkFormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefaultError value) defaultError,
  }) {
    return conflict(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(MethodNotAllowed value)? methodNotAllowed,
    TResult? Function(NotAcceptable value)? notAcceptable,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NotImplemented value)? notImplemented,
    TResult? Function(ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NetworkFormatException value)? formatException,
    TResult? Function(UnableToProcess value)? unableToProcess,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(DefaultError value)? defaultError,
  }) {
    return conflict?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAcceptable value)? notAcceptable,
    TResult Function(Conflict value)? conflict,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NotImplemented value)? notImplemented,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NetworkFormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefaultError value)? defaultError,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConflictImplToJson(
      this,
    );
  }
}

abstract class Conflict extends NetworkException implements TranslatableException {
  const factory Conflict() = _$ConflictImpl;
  const Conflict._() : super._();

  factory Conflict.fromJson(Map<String, dynamic> json) = _$ConflictImpl.fromJson;
}

/// @nodoc
abstract class _$$InternalServerErrorImplCopyWith<$Res> {
  factory _$$InternalServerErrorImplCopyWith(
          _$InternalServerErrorImpl value, $Res Function(_$InternalServerErrorImpl) then) =
      __$$InternalServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InternalServerErrorImplCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res, _$InternalServerErrorImpl>
    implements _$$InternalServerErrorImplCopyWith<$Res> {
  __$$InternalServerErrorImplCopyWithImpl(
      _$InternalServerErrorImpl _value, $Res Function(_$InternalServerErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$InternalServerErrorImpl extends InternalServerError {
  const _$InternalServerErrorImpl({final String? $type})
      : $type = $type ?? 'internalServerError',
        super._();

  factory _$InternalServerErrorImpl.fromJson(Map<String, dynamic> json) => _$$InternalServerErrorImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NetworkException.internalServerError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$InternalServerErrorImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic body) unauthorizedRequest,
    required TResult Function() badRequest,
    required TResult Function(String reason) notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() conflict,
    required TResult Function() internalServerError,
    required TResult Function() notImplemented,
    required TResult Function() serviceUnavailable,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
    required TResult Function(int? code, String? error) defaultError,
  }) {
    return internalServerError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic body)? unauthorizedRequest,
    TResult? Function()? badRequest,
    TResult? Function(String reason)? notFound,
    TResult? Function()? methodNotAllowed,
    TResult? Function()? notAcceptable,
    TResult? Function()? conflict,
    TResult? Function()? internalServerError,
    TResult? Function()? notImplemented,
    TResult? Function()? serviceUnavailable,
    TResult? Function()? noInternetConnection,
    TResult? Function()? formatException,
    TResult? Function()? unableToProcess,
    TResult? Function()? unexpectedError,
    TResult? Function(int? code, String? error)? defaultError,
  }) {
    return internalServerError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic body)? unauthorizedRequest,
    TResult Function()? badRequest,
    TResult Function(String reason)? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? conflict,
    TResult Function()? internalServerError,
    TResult Function()? notImplemented,
    TResult Function()? serviceUnavailable,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    TResult Function(int? code, String? error)? defaultError,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequest value) unauthorizedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAcceptable value) notAcceptable,
    required TResult Function(Conflict value) conflict,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NotImplemented value) notImplemented,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NetworkFormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefaultError value) defaultError,
  }) {
    return internalServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(MethodNotAllowed value)? methodNotAllowed,
    TResult? Function(NotAcceptable value)? notAcceptable,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NotImplemented value)? notImplemented,
    TResult? Function(ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NetworkFormatException value)? formatException,
    TResult? Function(UnableToProcess value)? unableToProcess,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(DefaultError value)? defaultError,
  }) {
    return internalServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAcceptable value)? notAcceptable,
    TResult Function(Conflict value)? conflict,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NotImplemented value)? notImplemented,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NetworkFormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefaultError value)? defaultError,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InternalServerErrorImplToJson(
      this,
    );
  }
}

abstract class InternalServerError extends NetworkException implements TranslatableException {
  const factory InternalServerError() = _$InternalServerErrorImpl;
  const InternalServerError._() : super._();

  factory InternalServerError.fromJson(Map<String, dynamic> json) = _$InternalServerErrorImpl.fromJson;
}

/// @nodoc
abstract class _$$NotImplementedImplCopyWith<$Res> {
  factory _$$NotImplementedImplCopyWith(_$NotImplementedImpl value, $Res Function(_$NotImplementedImpl) then) =
      __$$NotImplementedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotImplementedImplCopyWithImpl<$Res> extends _$NetworkExceptionCopyWithImpl<$Res, _$NotImplementedImpl>
    implements _$$NotImplementedImplCopyWith<$Res> {
  __$$NotImplementedImplCopyWithImpl(_$NotImplementedImpl _value, $Res Function(_$NotImplementedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$NotImplementedImpl extends NotImplemented {
  const _$NotImplementedImpl({final String? $type})
      : $type = $type ?? 'notImplemented',
        super._();

  factory _$NotImplementedImpl.fromJson(Map<String, dynamic> json) => _$$NotImplementedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NetworkException.notImplemented()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$NotImplementedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic body) unauthorizedRequest,
    required TResult Function() badRequest,
    required TResult Function(String reason) notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() conflict,
    required TResult Function() internalServerError,
    required TResult Function() notImplemented,
    required TResult Function() serviceUnavailable,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
    required TResult Function(int? code, String? error) defaultError,
  }) {
    return notImplemented();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic body)? unauthorizedRequest,
    TResult? Function()? badRequest,
    TResult? Function(String reason)? notFound,
    TResult? Function()? methodNotAllowed,
    TResult? Function()? notAcceptable,
    TResult? Function()? conflict,
    TResult? Function()? internalServerError,
    TResult? Function()? notImplemented,
    TResult? Function()? serviceUnavailable,
    TResult? Function()? noInternetConnection,
    TResult? Function()? formatException,
    TResult? Function()? unableToProcess,
    TResult? Function()? unexpectedError,
    TResult? Function(int? code, String? error)? defaultError,
  }) {
    return notImplemented?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic body)? unauthorizedRequest,
    TResult Function()? badRequest,
    TResult Function(String reason)? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? conflict,
    TResult Function()? internalServerError,
    TResult Function()? notImplemented,
    TResult Function()? serviceUnavailable,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    TResult Function(int? code, String? error)? defaultError,
    required TResult orElse(),
  }) {
    if (notImplemented != null) {
      return notImplemented();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequest value) unauthorizedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAcceptable value) notAcceptable,
    required TResult Function(Conflict value) conflict,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NotImplemented value) notImplemented,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NetworkFormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefaultError value) defaultError,
  }) {
    return notImplemented(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(MethodNotAllowed value)? methodNotAllowed,
    TResult? Function(NotAcceptable value)? notAcceptable,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NotImplemented value)? notImplemented,
    TResult? Function(ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NetworkFormatException value)? formatException,
    TResult? Function(UnableToProcess value)? unableToProcess,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(DefaultError value)? defaultError,
  }) {
    return notImplemented?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAcceptable value)? notAcceptable,
    TResult Function(Conflict value)? conflict,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NotImplemented value)? notImplemented,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NetworkFormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefaultError value)? defaultError,
    required TResult orElse(),
  }) {
    if (notImplemented != null) {
      return notImplemented(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NotImplementedImplToJson(
      this,
    );
  }
}

abstract class NotImplemented extends NetworkException implements TranslatableException {
  const factory NotImplemented() = _$NotImplementedImpl;
  const NotImplemented._() : super._();

  factory NotImplemented.fromJson(Map<String, dynamic> json) = _$NotImplementedImpl.fromJson;
}

/// @nodoc
abstract class _$$ServiceUnavailableImplCopyWith<$Res> {
  factory _$$ServiceUnavailableImplCopyWith(
          _$ServiceUnavailableImpl value, $Res Function(_$ServiceUnavailableImpl) then) =
      __$$ServiceUnavailableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceUnavailableImplCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res, _$ServiceUnavailableImpl>
    implements _$$ServiceUnavailableImplCopyWith<$Res> {
  __$$ServiceUnavailableImplCopyWithImpl(_$ServiceUnavailableImpl _value, $Res Function(_$ServiceUnavailableImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ServiceUnavailableImpl extends ServiceUnavailable {
  const _$ServiceUnavailableImpl({final String? $type})
      : $type = $type ?? 'serviceUnavailable',
        super._();

  factory _$ServiceUnavailableImpl.fromJson(Map<String, dynamic> json) => _$$ServiceUnavailableImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NetworkException.serviceUnavailable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ServiceUnavailableImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic body) unauthorizedRequest,
    required TResult Function() badRequest,
    required TResult Function(String reason) notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() conflict,
    required TResult Function() internalServerError,
    required TResult Function() notImplemented,
    required TResult Function() serviceUnavailable,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
    required TResult Function(int? code, String? error) defaultError,
  }) {
    return serviceUnavailable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic body)? unauthorizedRequest,
    TResult? Function()? badRequest,
    TResult? Function(String reason)? notFound,
    TResult? Function()? methodNotAllowed,
    TResult? Function()? notAcceptable,
    TResult? Function()? conflict,
    TResult? Function()? internalServerError,
    TResult? Function()? notImplemented,
    TResult? Function()? serviceUnavailable,
    TResult? Function()? noInternetConnection,
    TResult? Function()? formatException,
    TResult? Function()? unableToProcess,
    TResult? Function()? unexpectedError,
    TResult? Function(int? code, String? error)? defaultError,
  }) {
    return serviceUnavailable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic body)? unauthorizedRequest,
    TResult Function()? badRequest,
    TResult Function(String reason)? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? conflict,
    TResult Function()? internalServerError,
    TResult Function()? notImplemented,
    TResult Function()? serviceUnavailable,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    TResult Function(int? code, String? error)? defaultError,
    required TResult orElse(),
  }) {
    if (serviceUnavailable != null) {
      return serviceUnavailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequest value) unauthorizedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAcceptable value) notAcceptable,
    required TResult Function(Conflict value) conflict,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NotImplemented value) notImplemented,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NetworkFormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefaultError value) defaultError,
  }) {
    return serviceUnavailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(MethodNotAllowed value)? methodNotAllowed,
    TResult? Function(NotAcceptable value)? notAcceptable,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NotImplemented value)? notImplemented,
    TResult? Function(ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NetworkFormatException value)? formatException,
    TResult? Function(UnableToProcess value)? unableToProcess,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(DefaultError value)? defaultError,
  }) {
    return serviceUnavailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAcceptable value)? notAcceptable,
    TResult Function(Conflict value)? conflict,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NotImplemented value)? notImplemented,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NetworkFormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefaultError value)? defaultError,
    required TResult orElse(),
  }) {
    if (serviceUnavailable != null) {
      return serviceUnavailable(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceUnavailableImplToJson(
      this,
    );
  }
}

abstract class ServiceUnavailable extends NetworkException implements TranslatableException {
  const factory ServiceUnavailable() = _$ServiceUnavailableImpl;
  const ServiceUnavailable._() : super._();

  factory ServiceUnavailable.fromJson(Map<String, dynamic> json) = _$ServiceUnavailableImpl.fromJson;
}

/// @nodoc
abstract class _$$NoInternetConnectionImplCopyWith<$Res> {
  factory _$$NoInternetConnectionImplCopyWith(
          _$NoInternetConnectionImpl value, $Res Function(_$NoInternetConnectionImpl) then) =
      __$$NoInternetConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetConnectionImplCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res, _$NoInternetConnectionImpl>
    implements _$$NoInternetConnectionImplCopyWith<$Res> {
  __$$NoInternetConnectionImplCopyWithImpl(
      _$NoInternetConnectionImpl _value, $Res Function(_$NoInternetConnectionImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$NoInternetConnectionImpl extends NoInternetConnection {
  const _$NoInternetConnectionImpl({final String? $type})
      : $type = $type ?? 'noInternetConnection',
        super._();

  factory _$NoInternetConnectionImpl.fromJson(Map<String, dynamic> json) => _$$NoInternetConnectionImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NetworkException.noInternetConnection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$NoInternetConnectionImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic body) unauthorizedRequest,
    required TResult Function() badRequest,
    required TResult Function(String reason) notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() conflict,
    required TResult Function() internalServerError,
    required TResult Function() notImplemented,
    required TResult Function() serviceUnavailable,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
    required TResult Function(int? code, String? error) defaultError,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic body)? unauthorizedRequest,
    TResult? Function()? badRequest,
    TResult? Function(String reason)? notFound,
    TResult? Function()? methodNotAllowed,
    TResult? Function()? notAcceptable,
    TResult? Function()? conflict,
    TResult? Function()? internalServerError,
    TResult? Function()? notImplemented,
    TResult? Function()? serviceUnavailable,
    TResult? Function()? noInternetConnection,
    TResult? Function()? formatException,
    TResult? Function()? unableToProcess,
    TResult? Function()? unexpectedError,
    TResult? Function(int? code, String? error)? defaultError,
  }) {
    return noInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic body)? unauthorizedRequest,
    TResult Function()? badRequest,
    TResult Function(String reason)? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? conflict,
    TResult Function()? internalServerError,
    TResult Function()? notImplemented,
    TResult Function()? serviceUnavailable,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    TResult Function(int? code, String? error)? defaultError,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequest value) unauthorizedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAcceptable value) notAcceptable,
    required TResult Function(Conflict value) conflict,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NotImplemented value) notImplemented,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NetworkFormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefaultError value) defaultError,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(MethodNotAllowed value)? methodNotAllowed,
    TResult? Function(NotAcceptable value)? notAcceptable,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NotImplemented value)? notImplemented,
    TResult? Function(ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NetworkFormatException value)? formatException,
    TResult? Function(UnableToProcess value)? unableToProcess,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(DefaultError value)? defaultError,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAcceptable value)? notAcceptable,
    TResult Function(Conflict value)? conflict,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NotImplemented value)? notImplemented,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NetworkFormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefaultError value)? defaultError,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NoInternetConnectionImplToJson(
      this,
    );
  }
}

abstract class NoInternetConnection extends NetworkException implements TranslatableException {
  const factory NoInternetConnection() = _$NoInternetConnectionImpl;
  const NoInternetConnection._() : super._();

  factory NoInternetConnection.fromJson(Map<String, dynamic> json) = _$NoInternetConnectionImpl.fromJson;
}

/// @nodoc
abstract class _$$NetworkFormatExceptionImplCopyWith<$Res> {
  factory _$$NetworkFormatExceptionImplCopyWith(
          _$NetworkFormatExceptionImpl value, $Res Function(_$NetworkFormatExceptionImpl) then) =
      __$$NetworkFormatExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkFormatExceptionImplCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res, _$NetworkFormatExceptionImpl>
    implements _$$NetworkFormatExceptionImplCopyWith<$Res> {
  __$$NetworkFormatExceptionImplCopyWithImpl(
      _$NetworkFormatExceptionImpl _value, $Res Function(_$NetworkFormatExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$NetworkFormatExceptionImpl extends NetworkFormatException {
  const _$NetworkFormatExceptionImpl({final String? $type})
      : $type = $type ?? 'formatException',
        super._();

  factory _$NetworkFormatExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$NetworkFormatExceptionImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NetworkException.formatException()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$NetworkFormatExceptionImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic body) unauthorizedRequest,
    required TResult Function() badRequest,
    required TResult Function(String reason) notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() conflict,
    required TResult Function() internalServerError,
    required TResult Function() notImplemented,
    required TResult Function() serviceUnavailable,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
    required TResult Function(int? code, String? error) defaultError,
  }) {
    return formatException();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic body)? unauthorizedRequest,
    TResult? Function()? badRequest,
    TResult? Function(String reason)? notFound,
    TResult? Function()? methodNotAllowed,
    TResult? Function()? notAcceptable,
    TResult? Function()? conflict,
    TResult? Function()? internalServerError,
    TResult? Function()? notImplemented,
    TResult? Function()? serviceUnavailable,
    TResult? Function()? noInternetConnection,
    TResult? Function()? formatException,
    TResult? Function()? unableToProcess,
    TResult? Function()? unexpectedError,
    TResult? Function(int? code, String? error)? defaultError,
  }) {
    return formatException?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic body)? unauthorizedRequest,
    TResult Function()? badRequest,
    TResult Function(String reason)? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? conflict,
    TResult Function()? internalServerError,
    TResult Function()? notImplemented,
    TResult Function()? serviceUnavailable,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    TResult Function(int? code, String? error)? defaultError,
    required TResult orElse(),
  }) {
    if (formatException != null) {
      return formatException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequest value) unauthorizedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAcceptable value) notAcceptable,
    required TResult Function(Conflict value) conflict,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NotImplemented value) notImplemented,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NetworkFormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefaultError value) defaultError,
  }) {
    return formatException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(MethodNotAllowed value)? methodNotAllowed,
    TResult? Function(NotAcceptable value)? notAcceptable,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NotImplemented value)? notImplemented,
    TResult? Function(ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NetworkFormatException value)? formatException,
    TResult? Function(UnableToProcess value)? unableToProcess,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(DefaultError value)? defaultError,
  }) {
    return formatException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAcceptable value)? notAcceptable,
    TResult Function(Conflict value)? conflict,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NotImplemented value)? notImplemented,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NetworkFormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefaultError value)? defaultError,
    required TResult orElse(),
  }) {
    if (formatException != null) {
      return formatException(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NetworkFormatExceptionImplToJson(
      this,
    );
  }
}

abstract class NetworkFormatException extends NetworkException implements TranslatableException {
  const factory NetworkFormatException() = _$NetworkFormatExceptionImpl;
  const NetworkFormatException._() : super._();

  factory NetworkFormatException.fromJson(Map<String, dynamic> json) = _$NetworkFormatExceptionImpl.fromJson;
}

/// @nodoc
abstract class _$$UnableToProcessImplCopyWith<$Res> {
  factory _$$UnableToProcessImplCopyWith(_$UnableToProcessImpl value, $Res Function(_$UnableToProcessImpl) then) =
      __$$UnableToProcessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnableToProcessImplCopyWithImpl<$Res> extends _$NetworkExceptionCopyWithImpl<$Res, _$UnableToProcessImpl>
    implements _$$UnableToProcessImplCopyWith<$Res> {
  __$$UnableToProcessImplCopyWithImpl(_$UnableToProcessImpl _value, $Res Function(_$UnableToProcessImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UnableToProcessImpl extends UnableToProcess {
  const _$UnableToProcessImpl({final String? $type})
      : $type = $type ?? 'unableToProcess',
        super._();

  factory _$UnableToProcessImpl.fromJson(Map<String, dynamic> json) => _$$UnableToProcessImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NetworkException.unableToProcess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$UnableToProcessImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic body) unauthorizedRequest,
    required TResult Function() badRequest,
    required TResult Function(String reason) notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() conflict,
    required TResult Function() internalServerError,
    required TResult Function() notImplemented,
    required TResult Function() serviceUnavailable,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
    required TResult Function(int? code, String? error) defaultError,
  }) {
    return unableToProcess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic body)? unauthorizedRequest,
    TResult? Function()? badRequest,
    TResult? Function(String reason)? notFound,
    TResult? Function()? methodNotAllowed,
    TResult? Function()? notAcceptable,
    TResult? Function()? conflict,
    TResult? Function()? internalServerError,
    TResult? Function()? notImplemented,
    TResult? Function()? serviceUnavailable,
    TResult? Function()? noInternetConnection,
    TResult? Function()? formatException,
    TResult? Function()? unableToProcess,
    TResult? Function()? unexpectedError,
    TResult? Function(int? code, String? error)? defaultError,
  }) {
    return unableToProcess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic body)? unauthorizedRequest,
    TResult Function()? badRequest,
    TResult Function(String reason)? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? conflict,
    TResult Function()? internalServerError,
    TResult Function()? notImplemented,
    TResult Function()? serviceUnavailable,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    TResult Function(int? code, String? error)? defaultError,
    required TResult orElse(),
  }) {
    if (unableToProcess != null) {
      return unableToProcess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequest value) unauthorizedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAcceptable value) notAcceptable,
    required TResult Function(Conflict value) conflict,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NotImplemented value) notImplemented,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NetworkFormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefaultError value) defaultError,
  }) {
    return unableToProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(MethodNotAllowed value)? methodNotAllowed,
    TResult? Function(NotAcceptable value)? notAcceptable,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NotImplemented value)? notImplemented,
    TResult? Function(ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NetworkFormatException value)? formatException,
    TResult? Function(UnableToProcess value)? unableToProcess,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(DefaultError value)? defaultError,
  }) {
    return unableToProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAcceptable value)? notAcceptable,
    TResult Function(Conflict value)? conflict,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NotImplemented value)? notImplemented,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NetworkFormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefaultError value)? defaultError,
    required TResult orElse(),
  }) {
    if (unableToProcess != null) {
      return unableToProcess(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnableToProcessImplToJson(
      this,
    );
  }
}

abstract class UnableToProcess extends NetworkException implements TranslatableException {
  const factory UnableToProcess() = _$UnableToProcessImpl;
  const UnableToProcess._() : super._();

  factory UnableToProcess.fromJson(Map<String, dynamic> json) = _$UnableToProcessImpl.fromJson;
}

/// @nodoc
abstract class _$$UnexpectedErrorImplCopyWith<$Res> {
  factory _$$UnexpectedErrorImplCopyWith(_$UnexpectedErrorImpl value, $Res Function(_$UnexpectedErrorImpl) then) =
      __$$UnexpectedErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedErrorImplCopyWithImpl<$Res> extends _$NetworkExceptionCopyWithImpl<$Res, _$UnexpectedErrorImpl>
    implements _$$UnexpectedErrorImplCopyWith<$Res> {
  __$$UnexpectedErrorImplCopyWithImpl(_$UnexpectedErrorImpl _value, $Res Function(_$UnexpectedErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UnexpectedErrorImpl extends UnexpectedError {
  const _$UnexpectedErrorImpl({final String? $type})
      : $type = $type ?? 'unexpectedError',
        super._();

  factory _$UnexpectedErrorImpl.fromJson(Map<String, dynamic> json) => _$$UnexpectedErrorImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NetworkException.unexpectedError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$UnexpectedErrorImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic body) unauthorizedRequest,
    required TResult Function() badRequest,
    required TResult Function(String reason) notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() conflict,
    required TResult Function() internalServerError,
    required TResult Function() notImplemented,
    required TResult Function() serviceUnavailable,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
    required TResult Function(int? code, String? error) defaultError,
  }) {
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic body)? unauthorizedRequest,
    TResult? Function()? badRequest,
    TResult? Function(String reason)? notFound,
    TResult? Function()? methodNotAllowed,
    TResult? Function()? notAcceptable,
    TResult? Function()? conflict,
    TResult? Function()? internalServerError,
    TResult? Function()? notImplemented,
    TResult? Function()? serviceUnavailable,
    TResult? Function()? noInternetConnection,
    TResult? Function()? formatException,
    TResult? Function()? unableToProcess,
    TResult? Function()? unexpectedError,
    TResult? Function(int? code, String? error)? defaultError,
  }) {
    return unexpectedError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic body)? unauthorizedRequest,
    TResult Function()? badRequest,
    TResult Function(String reason)? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? conflict,
    TResult Function()? internalServerError,
    TResult Function()? notImplemented,
    TResult Function()? serviceUnavailable,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    TResult Function(int? code, String? error)? defaultError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequest value) unauthorizedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAcceptable value) notAcceptable,
    required TResult Function(Conflict value) conflict,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NotImplemented value) notImplemented,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NetworkFormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefaultError value) defaultError,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(MethodNotAllowed value)? methodNotAllowed,
    TResult? Function(NotAcceptable value)? notAcceptable,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NotImplemented value)? notImplemented,
    TResult? Function(ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NetworkFormatException value)? formatException,
    TResult? Function(UnableToProcess value)? unableToProcess,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(DefaultError value)? defaultError,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAcceptable value)? notAcceptable,
    TResult Function(Conflict value)? conflict,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NotImplemented value)? notImplemented,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NetworkFormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefaultError value)? defaultError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnexpectedErrorImplToJson(
      this,
    );
  }
}

abstract class UnexpectedError extends NetworkException implements TranslatableException {
  const factory UnexpectedError() = _$UnexpectedErrorImpl;
  const UnexpectedError._() : super._();

  factory UnexpectedError.fromJson(Map<String, dynamic> json) = _$UnexpectedErrorImpl.fromJson;
}

/// @nodoc
abstract class _$$DefaultErrorImplCopyWith<$Res> {
  factory _$$DefaultErrorImplCopyWith(_$DefaultErrorImpl value, $Res Function(_$DefaultErrorImpl) then) =
      __$$DefaultErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? code, String? error});
}

/// @nodoc
class __$$DefaultErrorImplCopyWithImpl<$Res> extends _$NetworkExceptionCopyWithImpl<$Res, _$DefaultErrorImpl>
    implements _$$DefaultErrorImplCopyWith<$Res> {
  __$$DefaultErrorImplCopyWithImpl(_$DefaultErrorImpl _value, $Res Function(_$DefaultErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? error = freezed,
  }) {
    return _then(_$DefaultErrorImpl(
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DefaultErrorImpl extends DefaultError {
  const _$DefaultErrorImpl(this.code, this.error, {final String? $type})
      : $type = $type ?? 'defaultError',
        super._();

  factory _$DefaultErrorImpl.fromJson(Map<String, dynamic> json) => _$$DefaultErrorImplFromJson(json);

  @override
  final int? code;
  @override
  final String? error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NetworkException.defaultError(code: $code, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultErrorImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultErrorImplCopyWith<_$DefaultErrorImpl> get copyWith =>
      __$$DefaultErrorImplCopyWithImpl<_$DefaultErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic body) unauthorizedRequest,
    required TResult Function() badRequest,
    required TResult Function(String reason) notFound,
    required TResult Function() methodNotAllowed,
    required TResult Function() notAcceptable,
    required TResult Function() conflict,
    required TResult Function() internalServerError,
    required TResult Function() notImplemented,
    required TResult Function() serviceUnavailable,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
    required TResult Function(int? code, String? error) defaultError,
  }) {
    return defaultError(code, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic body)? unauthorizedRequest,
    TResult? Function()? badRequest,
    TResult? Function(String reason)? notFound,
    TResult? Function()? methodNotAllowed,
    TResult? Function()? notAcceptable,
    TResult? Function()? conflict,
    TResult? Function()? internalServerError,
    TResult? Function()? notImplemented,
    TResult? Function()? serviceUnavailable,
    TResult? Function()? noInternetConnection,
    TResult? Function()? formatException,
    TResult? Function()? unableToProcess,
    TResult? Function()? unexpectedError,
    TResult? Function(int? code, String? error)? defaultError,
  }) {
    return defaultError?.call(code, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic body)? unauthorizedRequest,
    TResult Function()? badRequest,
    TResult Function(String reason)? notFound,
    TResult Function()? methodNotAllowed,
    TResult Function()? notAcceptable,
    TResult Function()? conflict,
    TResult Function()? internalServerError,
    TResult Function()? notImplemented,
    TResult Function()? serviceUnavailable,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    TResult Function(int? code, String? error)? defaultError,
    required TResult orElse(),
  }) {
    if (defaultError != null) {
      return defaultError(code, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedRequest value) unauthorizedRequest,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(NotFound value) notFound,
    required TResult Function(MethodNotAllowed value) methodNotAllowed,
    required TResult Function(NotAcceptable value) notAcceptable,
    required TResult Function(Conflict value) conflict,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NotImplemented value) notImplemented,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NetworkFormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefaultError value) defaultError,
  }) {
    return defaultError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(MethodNotAllowed value)? methodNotAllowed,
    TResult? Function(NotAcceptable value)? notAcceptable,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NotImplemented value)? notImplemented,
    TResult? Function(ServiceUnavailable value)? serviceUnavailable,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NetworkFormatException value)? formatException,
    TResult? Function(UnableToProcess value)? unableToProcess,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(DefaultError value)? defaultError,
  }) {
    return defaultError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedRequest value)? unauthorizedRequest,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(NotFound value)? notFound,
    TResult Function(MethodNotAllowed value)? methodNotAllowed,
    TResult Function(NotAcceptable value)? notAcceptable,
    TResult Function(Conflict value)? conflict,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NotImplemented value)? notImplemented,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NetworkFormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefaultError value)? defaultError,
    required TResult orElse(),
  }) {
    if (defaultError != null) {
      return defaultError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DefaultErrorImplToJson(
      this,
    );
  }
}

abstract class DefaultError extends NetworkException implements TranslatableException {
  const factory DefaultError(final int? code, final String? error) = _$DefaultErrorImpl;
  const DefaultError._() : super._();

  factory DefaultError.fromJson(Map<String, dynamic> json) = _$DefaultErrorImpl.fromJson;

  int? get code;
  String? get error;
  @JsonKey(ignore: true)
  _$$DefaultErrorImplCopyWith<_$DefaultErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
