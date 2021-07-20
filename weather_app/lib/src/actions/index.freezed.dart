// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetIpTearOff {
  const _$GetIpTearOff();

  GetIpStart call() {
    return const GetIpStart();
  }

  GetIpSuccessful successful(Ip ip) {
    return GetIpSuccessful(
      ip,
    );
  }

  GetIpError error(Object error, StackTrace stackTrace) {
    return GetIpError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetIp = _$GetIpTearOff();

/// @nodoc
mixin _$GetIp {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Ip ip) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Ip ip)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetIpStart value) $default, {
    required TResult Function(GetIpSuccessful value) successful,
    required TResult Function(GetIpError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetIpStart value)? $default, {
    TResult Function(GetIpSuccessful value)? successful,
    TResult Function(GetIpError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetIpCopyWith<$Res> {
  factory $GetIpCopyWith(GetIp value, $Res Function(GetIp) then) = _$GetIpCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetIpCopyWithImpl<$Res> implements $GetIpCopyWith<$Res> {
  _$GetIpCopyWithImpl(this._value, this._then);

  final GetIp _value;
  // ignore: unused_field
  final $Res Function(GetIp) _then;
}

/// @nodoc
abstract class $GetIpStartCopyWith<$Res> {
  factory $GetIpStartCopyWith(GetIpStart value, $Res Function(GetIpStart) then) = _$GetIpStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetIpStartCopyWithImpl<$Res> extends _$GetIpCopyWithImpl<$Res> implements $GetIpStartCopyWith<$Res> {
  _$GetIpStartCopyWithImpl(GetIpStart _value, $Res Function(GetIpStart) _then)
      : super(_value, (v) => _then(v as GetIpStart));

  @override
  GetIpStart get _value => super._value as GetIpStart;
}

/// @nodoc

class _$GetIpStart implements GetIpStart {
  const _$GetIpStart();

  @override
  String toString() {
    return 'GetIp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetIpStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Ip ip) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Ip ip)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetIpStart value) $default, {
    required TResult Function(GetIpSuccessful value) successful,
    required TResult Function(GetIpError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetIpStart value)? $default, {
    TResult Function(GetIpSuccessful value)? successful,
    TResult Function(GetIpError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetIpStart implements GetIp {
  const factory GetIpStart() = _$GetIpStart;
}

/// @nodoc
abstract class $GetIpSuccessfulCopyWith<$Res> {
  factory $GetIpSuccessfulCopyWith(GetIpSuccessful value, $Res Function(GetIpSuccessful) then) =
      _$GetIpSuccessfulCopyWithImpl<$Res>;
  $Res call({Ip ip});
}

/// @nodoc
class _$GetIpSuccessfulCopyWithImpl<$Res> extends _$GetIpCopyWithImpl<$Res> implements $GetIpSuccessfulCopyWith<$Res> {
  _$GetIpSuccessfulCopyWithImpl(GetIpSuccessful _value, $Res Function(GetIpSuccessful) _then)
      : super(_value, (v) => _then(v as GetIpSuccessful));

  @override
  GetIpSuccessful get _value => super._value as GetIpSuccessful;

  @override
  $Res call({
    Object? ip = freezed,
  }) {
    return _then(GetIpSuccessful(
      ip == freezed
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as Ip,
    ));
  }
}

/// @nodoc

class _$GetIpSuccessful implements GetIpSuccessful {
  const _$GetIpSuccessful(this.ip);

  @override
  final Ip ip;

  @override
  String toString() {
    return 'GetIp.successful(ip: $ip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetIpSuccessful && (identical(other.ip, ip) || const DeepCollectionEquality().equals(other.ip, ip)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(ip);

  @JsonKey(ignore: true)
  @override
  $GetIpSuccessfulCopyWith<GetIpSuccessful> get copyWith =>
      _$GetIpSuccessfulCopyWithImpl<GetIpSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Ip ip) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(ip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Ip ip)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(ip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetIpStart value) $default, {
    required TResult Function(GetIpSuccessful value) successful,
    required TResult Function(GetIpError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetIpStart value)? $default, {
    TResult Function(GetIpSuccessful value)? successful,
    TResult Function(GetIpError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetIpSuccessful implements GetIp {
  const factory GetIpSuccessful(Ip ip) = _$GetIpSuccessful;

  Ip get ip => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetIpSuccessfulCopyWith<GetIpSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetIpErrorCopyWith<$Res> {
  factory $GetIpErrorCopyWith(GetIpError value, $Res Function(GetIpError) then) = _$GetIpErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetIpErrorCopyWithImpl<$Res> extends _$GetIpCopyWithImpl<$Res> implements $GetIpErrorCopyWith<$Res> {
  _$GetIpErrorCopyWithImpl(GetIpError _value, $Res Function(GetIpError) _then)
      : super(_value, (v) => _then(v as GetIpError));

  @override
  GetIpError get _value => super._value as GetIpError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetIpError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$GetIpError implements GetIpError {
  const _$GetIpError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetIp.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetIpError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality().equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $GetIpErrorCopyWith<GetIpError> get copyWith => _$GetIpErrorCopyWithImpl<GetIpError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Ip ip) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Ip ip)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetIpStart value) $default, {
    required TResult Function(GetIpSuccessful value) successful,
    required TResult Function(GetIpError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetIpStart value)? $default, {
    TResult Function(GetIpSuccessful value)? successful,
    TResult Function(GetIpError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetIpError implements GetIp, ErrorAction {
  const factory GetIpError(Object error, StackTrace stackTrace) = _$GetIpError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetIpErrorCopyWith<GetIpError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetGeolocTearOff {
  const _$GetGeolocTearOff();

  GetGeolocStart call() {
    return const GetGeolocStart();
  }

  GetGeolocSuccessful successful(Geoloc geoloc) {
    return GetGeolocSuccessful(
      geoloc,
    );
  }

  GetGeolocError error(Object error, StackTrace stackTrace) {
    return GetGeolocError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetGeoloc = _$GetGeolocTearOff();

/// @nodoc
mixin _$GetGeoloc {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Geoloc geoloc) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Geoloc geoloc)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetGeolocStart value) $default, {
    required TResult Function(GetGeolocSuccessful value) successful,
    required TResult Function(GetGeolocError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetGeolocStart value)? $default, {
    TResult Function(GetGeolocSuccessful value)? successful,
    TResult Function(GetGeolocError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetGeolocCopyWith<$Res> {
  factory $GetGeolocCopyWith(GetGeoloc value, $Res Function(GetGeoloc) then) = _$GetGeolocCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetGeolocCopyWithImpl<$Res> implements $GetGeolocCopyWith<$Res> {
  _$GetGeolocCopyWithImpl(this._value, this._then);

  final GetGeoloc _value;
  // ignore: unused_field
  final $Res Function(GetGeoloc) _then;
}

/// @nodoc
abstract class $GetGeolocStartCopyWith<$Res> {
  factory $GetGeolocStartCopyWith(GetGeolocStart value, $Res Function(GetGeolocStart) then) =
      _$GetGeolocStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetGeolocStartCopyWithImpl<$Res> extends _$GetGeolocCopyWithImpl<$Res>
    implements $GetGeolocStartCopyWith<$Res> {
  _$GetGeolocStartCopyWithImpl(GetGeolocStart _value, $Res Function(GetGeolocStart) _then)
      : super(_value, (v) => _then(v as GetGeolocStart));

  @override
  GetGeolocStart get _value => super._value as GetGeolocStart;
}

/// @nodoc

class _$GetGeolocStart implements GetGeolocStart {
  const _$GetGeolocStart();

  @override
  String toString() {
    return 'GetGeoloc()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetGeolocStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Geoloc geoloc) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Geoloc geoloc)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetGeolocStart value) $default, {
    required TResult Function(GetGeolocSuccessful value) successful,
    required TResult Function(GetGeolocError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetGeolocStart value)? $default, {
    TResult Function(GetGeolocSuccessful value)? successful,
    TResult Function(GetGeolocError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetGeolocStart implements GetGeoloc {
  const factory GetGeolocStart() = _$GetGeolocStart;
}

/// @nodoc
abstract class $GetGeolocSuccessfulCopyWith<$Res> {
  factory $GetGeolocSuccessfulCopyWith(GetGeolocSuccessful value, $Res Function(GetGeolocSuccessful) then) =
      _$GetGeolocSuccessfulCopyWithImpl<$Res>;
  $Res call({Geoloc geoloc});
}

/// @nodoc
class _$GetGeolocSuccessfulCopyWithImpl<$Res> extends _$GetGeolocCopyWithImpl<$Res>
    implements $GetGeolocSuccessfulCopyWith<$Res> {
  _$GetGeolocSuccessfulCopyWithImpl(GetGeolocSuccessful _value, $Res Function(GetGeolocSuccessful) _then)
      : super(_value, (v) => _then(v as GetGeolocSuccessful));

  @override
  GetGeolocSuccessful get _value => super._value as GetGeolocSuccessful;

  @override
  $Res call({
    Object? geoloc = freezed,
  }) {
    return _then(GetGeolocSuccessful(
      geoloc == freezed
          ? _value.geoloc
          : geoloc // ignore: cast_nullable_to_non_nullable
              as Geoloc,
    ));
  }
}

/// @nodoc

class _$GetGeolocSuccessful implements GetGeolocSuccessful {
  const _$GetGeolocSuccessful(this.geoloc);

  @override
  final Geoloc geoloc;

  @override
  String toString() {
    return 'GetGeoloc.successful(geoloc: $geoloc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetGeolocSuccessful &&
            (identical(other.geoloc, geoloc) || const DeepCollectionEquality().equals(other.geoloc, geoloc)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(geoloc);

  @JsonKey(ignore: true)
  @override
  $GetGeolocSuccessfulCopyWith<GetGeolocSuccessful> get copyWith =>
      _$GetGeolocSuccessfulCopyWithImpl<GetGeolocSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Geoloc geoloc) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(geoloc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Geoloc geoloc)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(geoloc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetGeolocStart value) $default, {
    required TResult Function(GetGeolocSuccessful value) successful,
    required TResult Function(GetGeolocError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetGeolocStart value)? $default, {
    TResult Function(GetGeolocSuccessful value)? successful,
    TResult Function(GetGeolocError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetGeolocSuccessful implements GetGeoloc {
  const factory GetGeolocSuccessful(Geoloc geoloc) = _$GetGeolocSuccessful;

  Geoloc get geoloc => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetGeolocSuccessfulCopyWith<GetGeolocSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetGeolocErrorCopyWith<$Res> {
  factory $GetGeolocErrorCopyWith(GetGeolocError value, $Res Function(GetGeolocError) then) =
      _$GetGeolocErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetGeolocErrorCopyWithImpl<$Res> extends _$GetGeolocCopyWithImpl<$Res>
    implements $GetGeolocErrorCopyWith<$Res> {
  _$GetGeolocErrorCopyWithImpl(GetGeolocError _value, $Res Function(GetGeolocError) _then)
      : super(_value, (v) => _then(v as GetGeolocError));

  @override
  GetGeolocError get _value => super._value as GetGeolocError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetGeolocError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$GetGeolocError implements GetGeolocError {
  const _$GetGeolocError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetGeoloc.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetGeolocError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality().equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $GetGeolocErrorCopyWith<GetGeolocError> get copyWith =>
      _$GetGeolocErrorCopyWithImpl<GetGeolocError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Geoloc geoloc) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Geoloc geoloc)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetGeolocStart value) $default, {
    required TResult Function(GetGeolocSuccessful value) successful,
    required TResult Function(GetGeolocError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetGeolocStart value)? $default, {
    TResult Function(GetGeolocSuccessful value)? successful,
    TResult Function(GetGeolocError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetGeolocError implements GetGeoloc, ErrorAction {
  const factory GetGeolocError(Object error, StackTrace stackTrace) = _$GetGeolocError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetGeolocErrorCopyWith<GetGeolocError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetWeatherTearOff {
  const _$GetWeatherTearOff();

  GetWeatherStart call() {
    return const GetWeatherStart();
  }

  GetWeatherSuccessful successful(Weather weather) {
    return GetWeatherSuccessful(
      weather,
    );
  }

  GetWeatherError error(Object error, StackTrace stackTrace) {
    return GetWeatherError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetWeather = _$GetWeatherTearOff();

/// @nodoc
mixin _$GetWeather {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Weather weather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Weather weather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWeatherCopyWith<$Res> {
  factory $GetWeatherCopyWith(GetWeather value, $Res Function(GetWeather) then) = _$GetWeatherCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetWeatherCopyWithImpl<$Res> implements $GetWeatherCopyWith<$Res> {
  _$GetWeatherCopyWithImpl(this._value, this._then);

  final GetWeather _value;
  // ignore: unused_field
  final $Res Function(GetWeather) _then;
}

/// @nodoc
abstract class $GetWeatherStartCopyWith<$Res> {
  factory $GetWeatherStartCopyWith(GetWeatherStart value, $Res Function(GetWeatherStart) then) =
      _$GetWeatherStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetWeatherStartCopyWithImpl<$Res> extends _$GetWeatherCopyWithImpl<$Res>
    implements $GetWeatherStartCopyWith<$Res> {
  _$GetWeatherStartCopyWithImpl(GetWeatherStart _value, $Res Function(GetWeatherStart) _then)
      : super(_value, (v) => _then(v as GetWeatherStart));

  @override
  GetWeatherStart get _value => super._value as GetWeatherStart;
}

/// @nodoc

class _$GetWeatherStart implements GetWeatherStart {
  const _$GetWeatherStart();

  @override
  String toString() {
    return 'GetWeather()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetWeatherStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Weather weather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Weather weather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetWeatherStart implements GetWeather {
  const factory GetWeatherStart() = _$GetWeatherStart;
}

/// @nodoc
abstract class $GetWeatherSuccessfulCopyWith<$Res> {
  factory $GetWeatherSuccessfulCopyWith(GetWeatherSuccessful value, $Res Function(GetWeatherSuccessful) then) =
      _$GetWeatherSuccessfulCopyWithImpl<$Res>;
  $Res call({Weather weather});
}

/// @nodoc
class _$GetWeatherSuccessfulCopyWithImpl<$Res> extends _$GetWeatherCopyWithImpl<$Res>
    implements $GetWeatherSuccessfulCopyWith<$Res> {
  _$GetWeatherSuccessfulCopyWithImpl(GetWeatherSuccessful _value, $Res Function(GetWeatherSuccessful) _then)
      : super(_value, (v) => _then(v as GetWeatherSuccessful));

  @override
  GetWeatherSuccessful get _value => super._value as GetWeatherSuccessful;

  @override
  $Res call({
    Object? weather = freezed,
  }) {
    return _then(GetWeatherSuccessful(
      weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }
}

/// @nodoc

class _$GetWeatherSuccessful implements GetWeatherSuccessful {
  const _$GetWeatherSuccessful(this.weather);

  @override
  final Weather weather;

  @override
  String toString() {
    return 'GetWeather.successful(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWeatherSuccessful &&
            (identical(other.weather, weather) || const DeepCollectionEquality().equals(other.weather, weather)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(weather);

  @JsonKey(ignore: true)
  @override
  $GetWeatherSuccessfulCopyWith<GetWeatherSuccessful> get copyWith =>
      _$GetWeatherSuccessfulCopyWithImpl<GetWeatherSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Weather weather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Weather weather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetWeatherSuccessful implements GetWeather {
  const factory GetWeatherSuccessful(Weather weather) = _$GetWeatherSuccessful;

  Weather get weather => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetWeatherSuccessfulCopyWith<GetWeatherSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWeatherErrorCopyWith<$Res> {
  factory $GetWeatherErrorCopyWith(GetWeatherError value, $Res Function(GetWeatherError) then) =
      _$GetWeatherErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetWeatherErrorCopyWithImpl<$Res> extends _$GetWeatherCopyWithImpl<$Res>
    implements $GetWeatherErrorCopyWith<$Res> {
  _$GetWeatherErrorCopyWithImpl(GetWeatherError _value, $Res Function(GetWeatherError) _then)
      : super(_value, (v) => _then(v as GetWeatherError));

  @override
  GetWeatherError get _value => super._value as GetWeatherError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetWeatherError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$GetWeatherError implements GetWeatherError {
  const _$GetWeatherError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetWeather.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWeatherError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality().equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $GetWeatherErrorCopyWith<GetWeatherError> get copyWith =>
      _$GetWeatherErrorCopyWithImpl<GetWeatherError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Weather weather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Weather weather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetWeatherError implements GetWeather, ErrorAction {
  const factory GetWeatherError(Object error, StackTrace stackTrace) = _$GetWeatherError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetWeatherErrorCopyWith<GetWeatherError> get copyWith => throw _privateConstructorUsedError;
}
