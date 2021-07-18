// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Weather> _$weatherSerializer = new _$WeatherSerializer();

class _$WeatherSerializer implements StructuredSerializer<Weather> {
  @override
  final Iterable<Type> types = const [Weather, _$Weather];
  @override
  final String wireName = 'Weather';

  @override
  Iterable<Object?> serialize(Serializers serializers, Weather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.cod;
    if (value != null) {
      result..add('cod')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.message;
    if (value != null) {
      result..add('message')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.lat;
    if (value != null) {
      result..add('lat')..add(serializers.serialize(value, specifiedType: const FullType(double)));
    }
    value = object.lon;
    if (value != null) {
      result..add('lon')..add(serializers.serialize(value, specifiedType: const FullType(double)));
    }
    value = object.timezone;
    if (value != null) {
      result..add('timezone')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.timezoneOffset;
    if (value != null) {
      result..add('timezone_offset')..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.current;
    if (value != null) {
      result..add('current')..add(serializers.serialize(value, specifiedType: const FullType(WeatherCurrent)));
    }
    return result;
  }

  @override
  Weather deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cod':
          result.cod = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'message':
          result.message = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value, specifiedType: const FullType(double)) as double?;
          break;
        case 'lon':
          result.lon = serializers.deserialize(value, specifiedType: const FullType(double)) as double?;
          break;
        case 'timezone':
          result.timezone = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'timezone_offset':
          result.timezoneOffset = serializers.deserialize(value, specifiedType: const FullType(int)) as int?;
          break;
        case 'current':
          result.current.replace(
              serializers.deserialize(value, specifiedType: const FullType(WeatherCurrent))! as WeatherCurrent);
          break;
      }
    }

    return result.build();
  }
}

class _$Weather extends Weather {
  @override
  final String? cod;
  @override
  final String? message;
  @override
  final double? lat;
  @override
  final double? lon;
  @override
  final String? timezone;
  @override
  final int? timezoneOffset;
  @override
  final WeatherCurrent? current;

  factory _$Weather([void Function(WeatherBuilder)? updates]) => (new WeatherBuilder()..update(updates)).build();

  _$Weather._({this.cod, this.message, this.lat, this.lon, this.timezone, this.timezoneOffset, this.current})
      : super._();

  @override
  Weather rebuild(void Function(WeatherBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  WeatherBuilder toBuilder() => new WeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Weather &&
        cod == other.cod &&
        message == other.message &&
        lat == other.lat &&
        lon == other.lon &&
        timezone == other.timezone &&
        timezoneOffset == other.timezoneOffset &&
        current == other.current;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc($jc($jc(0, cod.hashCode), message.hashCode), lat.hashCode), lon.hashCode), timezone.hashCode),
            timezoneOffset.hashCode),
        current.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Weather')
          ..add('cod', cod)
          ..add('message', message)
          ..add('lat', lat)
          ..add('lon', lon)
          ..add('timezone', timezone)
          ..add('timezoneOffset', timezoneOffset)
          ..add('current', current))
        .toString();
  }
}

class WeatherBuilder implements Builder<Weather, WeatherBuilder> {
  _$Weather? _$v;

  String? _cod;
  String? get cod => _$this._cod;
  set cod(String? cod) => _$this._cod = cod;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _lon;
  double? get lon => _$this._lon;
  set lon(double? lon) => _$this._lon = lon;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  int? _timezoneOffset;
  int? get timezoneOffset => _$this._timezoneOffset;
  set timezoneOffset(int? timezoneOffset) => _$this._timezoneOffset = timezoneOffset;

  WeatherCurrentBuilder? _current;
  WeatherCurrentBuilder get current => _$this._current ??= new WeatherCurrentBuilder();
  set current(WeatherCurrentBuilder? current) => _$this._current = current;

  WeatherBuilder();

  WeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cod = $v.cod;
      _message = $v.message;
      _lat = $v.lat;
      _lon = $v.lon;
      _timezone = $v.timezone;
      _timezoneOffset = $v.timezoneOffset;
      _current = $v.current?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Weather other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Weather;
  }

  @override
  void update(void Function(WeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Weather build() {
    _$Weather _$result;
    try {
      _$result = _$v ??
          new _$Weather._(
              cod: cod,
              message: message,
              lat: lat,
              lon: lon,
              timezone: timezone,
              timezoneOffset: timezoneOffset,
              current: _current?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'current';
        _current?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('Weather', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
