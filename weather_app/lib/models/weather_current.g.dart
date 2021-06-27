// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_current.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherCurrent> _$weatherCurrentSerializer = new _$WeatherCurrentSerializer();

class _$WeatherCurrentSerializer implements StructuredSerializer<WeatherCurrent> {
  @override
  final Iterable<Type> types = const [WeatherCurrent, _$WeatherCurrent];
  @override
  final String wireName = 'WeatherCurrent';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherCurrent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.dt;
    if (value != null) {
      result..add('dt')..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sunrise;
    if (value != null) {
      result..add('sunrise')..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sunset;
    if (value != null) {
      result..add('sunset')..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.temp;
    if (value != null) {
      result..add('temp')..add(serializers.serialize(value, specifiedType: const FullType(double)));
    }
    value = object.feelsLike;
    if (value != null) {
      result..add('feels_like')..add(serializers.serialize(value, specifiedType: const FullType(double)));
    }
    value = object.pressure;
    if (value != null) {
      result..add('pressure')..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.humidity;
    if (value != null) {
      result..add('humidity')..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dewPoint;
    if (value != null) {
      result..add('dew_point')..add(serializers.serialize(value, specifiedType: const FullType(double)));
    }
    value = object.uvi;
    if (value != null) {
      result..add('uvi')..add(serializers.serialize(value, specifiedType: const FullType(double)));
    }
    value = object.clouds;
    if (value != null) {
      result..add('clouds')..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.visibility;
    if (value != null) {
      result..add('visibility')..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.windSpeed;
    if (value != null) {
      result..add('wind_speed')..add(serializers.serialize(value, specifiedType: const FullType(double)));
    }
    value = object.windDeg;
    if (value != null) {
      result..add('wind_deg')..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.windGust;
    if (value != null) {
      result..add('wind_gust')..add(serializers.serialize(value, specifiedType: const FullType(double)));
    }
    value = object.weather;
    if (value != null) {
      result
        ..add('weather')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [const FullType(WeatherData)])));
    }
    return result;
  }

  @override
  WeatherCurrent deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherCurrentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dt':
          result.dt = serializers.deserialize(value, specifiedType: const FullType(int)) as int?;
          break;
        case 'sunrise':
          result.sunrise = serializers.deserialize(value, specifiedType: const FullType(int)) as int?;
          break;
        case 'sunset':
          result.sunset = serializers.deserialize(value, specifiedType: const FullType(int)) as int?;
          break;
        case 'temp':
          result.temp = serializers.deserialize(value, specifiedType: const FullType(double)) as double?;
          break;
        case 'feels_like':
          result.feelsLike = serializers.deserialize(value, specifiedType: const FullType(double)) as double?;
          break;
        case 'pressure':
          result.pressure = serializers.deserialize(value, specifiedType: const FullType(int)) as int?;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value, specifiedType: const FullType(int)) as int?;
          break;
        case 'dew_point':
          result.dewPoint = serializers.deserialize(value, specifiedType: const FullType(double)) as double?;
          break;
        case 'uvi':
          result.uvi = serializers.deserialize(value, specifiedType: const FullType(double)) as double?;
          break;
        case 'clouds':
          result.clouds = serializers.deserialize(value, specifiedType: const FullType(int)) as int?;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value, specifiedType: const FullType(int)) as int?;
          break;
        case 'wind_speed':
          result.windSpeed = serializers.deserialize(value, specifiedType: const FullType(double)) as double?;
          break;
        case 'wind_deg':
          result.windDeg = serializers.deserialize(value, specifiedType: const FullType(int)) as int?;
          break;
        case 'wind_gust':
          result.windGust = serializers.deserialize(value, specifiedType: const FullType(double)) as double?;
          break;
        case 'weather':
          result.weather.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [const FullType(WeatherData)]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherCurrent extends WeatherCurrent {
  @override
  final int? dt;
  @override
  final int? sunrise;
  @override
  final int? sunset;
  @override
  final double? temp;
  @override
  final double? feelsLike;
  @override
  final int? pressure;
  @override
  final int? humidity;
  @override
  final double? dewPoint;
  @override
  final double? uvi;
  @override
  final int? clouds;
  @override
  final int? visibility;
  @override
  final double? windSpeed;
  @override
  final int? windDeg;
  @override
  final double? windGust;
  @override
  final BuiltList<WeatherData>? weather;

  factory _$WeatherCurrent([void Function(WeatherCurrentBuilder)? updates]) =>
      (new WeatherCurrentBuilder()..update(updates)).build();

  _$WeatherCurrent._(
      {this.dt,
      this.sunrise,
      this.sunset,
      this.temp,
      this.feelsLike,
      this.pressure,
      this.humidity,
      this.dewPoint,
      this.uvi,
      this.clouds,
      this.visibility,
      this.windSpeed,
      this.windDeg,
      this.windGust,
      this.weather})
      : super._();

  @override
  WeatherCurrent rebuild(void Function(WeatherCurrentBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  WeatherCurrentBuilder toBuilder() => new WeatherCurrentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherCurrent &&
        dt == other.dt &&
        sunrise == other.sunrise &&
        sunset == other.sunset &&
        temp == other.temp &&
        feelsLike == other.feelsLike &&
        pressure == other.pressure &&
        humidity == other.humidity &&
        dewPoint == other.dewPoint &&
        uvi == other.uvi &&
        clouds == other.clouds &&
        visibility == other.visibility &&
        windSpeed == other.windSpeed &&
        windDeg == other.windDeg &&
        windGust == other.windGust &&
        weather == other.weather;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc($jc($jc(0, dt.hashCode), sunrise.hashCode), sunset.hashCode),
                                                    temp.hashCode),
                                                feelsLike.hashCode),
                                            pressure.hashCode),
                                        humidity.hashCode),
                                    dewPoint.hashCode),
                                uvi.hashCode),
                            clouds.hashCode),
                        visibility.hashCode),
                    windSpeed.hashCode),
                windDeg.hashCode),
            windGust.hashCode),
        weather.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WeatherCurrent')
          ..add('dt', dt)
          ..add('sunrise', sunrise)
          ..add('sunset', sunset)
          ..add('temp', temp)
          ..add('feelsLike', feelsLike)
          ..add('pressure', pressure)
          ..add('humidity', humidity)
          ..add('dewPoint', dewPoint)
          ..add('uvi', uvi)
          ..add('clouds', clouds)
          ..add('visibility', visibility)
          ..add('windSpeed', windSpeed)
          ..add('windDeg', windDeg)
          ..add('windGust', windGust)
          ..add('weather', weather))
        .toString();
  }
}

class WeatherCurrentBuilder implements Builder<WeatherCurrent, WeatherCurrentBuilder> {
  _$WeatherCurrent? _$v;

  int? _dt;
  int? get dt => _$this._dt;
  set dt(int? dt) => _$this._dt = dt;

  int? _sunrise;
  int? get sunrise => _$this._sunrise;
  set sunrise(int? sunrise) => _$this._sunrise = sunrise;

  int? _sunset;
  int? get sunset => _$this._sunset;
  set sunset(int? sunset) => _$this._sunset = sunset;

  double? _temp;
  double? get temp => _$this._temp;
  set temp(double? temp) => _$this._temp = temp;

  double? _feelsLike;
  double? get feelsLike => _$this._feelsLike;
  set feelsLike(double? feelsLike) => _$this._feelsLike = feelsLike;

  int? _pressure;
  int? get pressure => _$this._pressure;
  set pressure(int? pressure) => _$this._pressure = pressure;

  int? _humidity;
  int? get humidity => _$this._humidity;
  set humidity(int? humidity) => _$this._humidity = humidity;

  double? _dewPoint;
  double? get dewPoint => _$this._dewPoint;
  set dewPoint(double? dewPoint) => _$this._dewPoint = dewPoint;

  double? _uvi;
  double? get uvi => _$this._uvi;
  set uvi(double? uvi) => _$this._uvi = uvi;

  int? _clouds;
  int? get clouds => _$this._clouds;
  set clouds(int? clouds) => _$this._clouds = clouds;

  int? _visibility;
  int? get visibility => _$this._visibility;
  set visibility(int? visibility) => _$this._visibility = visibility;

  double? _windSpeed;
  double? get windSpeed => _$this._windSpeed;
  set windSpeed(double? windSpeed) => _$this._windSpeed = windSpeed;

  int? _windDeg;
  int? get windDeg => _$this._windDeg;
  set windDeg(int? windDeg) => _$this._windDeg = windDeg;

  double? _windGust;
  double? get windGust => _$this._windGust;
  set windGust(double? windGust) => _$this._windGust = windGust;

  ListBuilder<WeatherData>? _weather;
  ListBuilder<WeatherData> get weather => _$this._weather ??= new ListBuilder<WeatherData>();
  set weather(ListBuilder<WeatherData>? weather) => _$this._weather = weather;

  WeatherCurrentBuilder();

  WeatherCurrentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dt = $v.dt;
      _sunrise = $v.sunrise;
      _sunset = $v.sunset;
      _temp = $v.temp;
      _feelsLike = $v.feelsLike;
      _pressure = $v.pressure;
      _humidity = $v.humidity;
      _dewPoint = $v.dewPoint;
      _uvi = $v.uvi;
      _clouds = $v.clouds;
      _visibility = $v.visibility;
      _windSpeed = $v.windSpeed;
      _windDeg = $v.windDeg;
      _windGust = $v.windGust;
      _weather = $v.weather?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherCurrent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherCurrent;
  }

  @override
  void update(void Function(WeatherCurrentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WeatherCurrent build() {
    _$WeatherCurrent _$result;
    try {
      _$result = _$v ??
          new _$WeatherCurrent._(
              dt: dt,
              sunrise: sunrise,
              sunset: sunset,
              temp: temp,
              feelsLike: feelsLike,
              pressure: pressure,
              humidity: humidity,
              dewPoint: dewPoint,
              uvi: uvi,
              clouds: clouds,
              visibility: visibility,
              windSpeed: windSpeed,
              windDeg: windDeg,
              windGust: windGust,
              weather: _weather?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weather';
        _weather?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('WeatherCurrent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
