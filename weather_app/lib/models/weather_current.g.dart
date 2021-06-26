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
    final result = <Object?>[
      'dt',
      serializers.serialize(object.dt, specifiedType: const FullType(int)),
      'sunrise',
      serializers.serialize(object.sunrise, specifiedType: const FullType(int)),
      'sunset',
      serializers.serialize(object.sunset, specifiedType: const FullType(int)),
      'temp',
      serializers.serialize(object.temp, specifiedType: const FullType(double)),
      'feels_like',
      serializers.serialize(object.feelsLike, specifiedType: const FullType(double)),
      'pressure',
      serializers.serialize(object.pressure, specifiedType: const FullType(int)),
      'humidity',
      serializers.serialize(object.humidity, specifiedType: const FullType(int)),
      'dew_point',
      serializers.serialize(object.dewPoint, specifiedType: const FullType(double)),
      'uvi',
      serializers.serialize(object.uvi, specifiedType: const FullType(double)),
      'clouds',
      serializers.serialize(object.clouds, specifiedType: const FullType(int)),
      'visibility',
      serializers.serialize(object.visibility, specifiedType: const FullType(int)),
      'wind_speed',
      serializers.serialize(object.windSpeed, specifiedType: const FullType(double)),
      'wind_deg',
      serializers.serialize(object.windDeg, specifiedType: const FullType(int)),
      'wind_gust',
      serializers.serialize(object.windGust, specifiedType: const FullType(double)),
      'weather',
      serializers.serialize(object.weather,
          specifiedType: const FullType(BuiltList, const [const FullType(WeatherData)])),
    ];

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
          result.dt = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'sunrise':
          result.sunrise = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'sunset':
          result.sunset = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'temp':
          result.temp = serializers.deserialize(value, specifiedType: const FullType(double)) as double;
          break;
        case 'feels_like':
          result.feelsLike = serializers.deserialize(value, specifiedType: const FullType(double)) as double;
          break;
        case 'pressure':
          result.pressure = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'dew_point':
          result.dewPoint = serializers.deserialize(value, specifiedType: const FullType(double)) as double;
          break;
        case 'uvi':
          result.uvi = serializers.deserialize(value, specifiedType: const FullType(double)) as double;
          break;
        case 'clouds':
          result.clouds = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'wind_speed':
          result.windSpeed = serializers.deserialize(value, specifiedType: const FullType(double)) as double;
          break;
        case 'wind_deg':
          result.windDeg = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'wind_gust':
          result.windGust = serializers.deserialize(value, specifiedType: const FullType(double)) as double;
          break;
        case 'weather':
          result.weather.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [const FullType(WeatherData)]))! as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherCurrent extends WeatherCurrent {
  @override
  final int dt;
  @override
  final int sunrise;
  @override
  final int sunset;
  @override
  final double temp;
  @override
  final double feelsLike;
  @override
  final int pressure;
  @override
  final int humidity;
  @override
  final double dewPoint;
  @override
  final double uvi;
  @override
  final int clouds;
  @override
  final int visibility;
  @override
  final double windSpeed;
  @override
  final int windDeg;
  @override
  final double windGust;
  @override
  final BuiltList<WeatherData> weather;

  factory _$WeatherCurrent([void Function(WeatherCurrentBuilder)? updates]) =>
      (new WeatherCurrentBuilder()..update(updates)).build();

  _$WeatherCurrent._(
      {required this.dt,
      required this.sunrise,
      required this.sunset,
      required this.temp,
      required this.feelsLike,
      required this.pressure,
      required this.humidity,
      required this.dewPoint,
      required this.uvi,
      required this.clouds,
      required this.visibility,
      required this.windSpeed,
      required this.windDeg,
      required this.windGust,
      required this.weather})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dt, 'WeatherCurrent', 'dt');
    BuiltValueNullFieldError.checkNotNull(sunrise, 'WeatherCurrent', 'sunrise');
    BuiltValueNullFieldError.checkNotNull(sunset, 'WeatherCurrent', 'sunset');
    BuiltValueNullFieldError.checkNotNull(temp, 'WeatherCurrent', 'temp');
    BuiltValueNullFieldError.checkNotNull(feelsLike, 'WeatherCurrent', 'feelsLike');
    BuiltValueNullFieldError.checkNotNull(pressure, 'WeatherCurrent', 'pressure');
    BuiltValueNullFieldError.checkNotNull(humidity, 'WeatherCurrent', 'humidity');
    BuiltValueNullFieldError.checkNotNull(dewPoint, 'WeatherCurrent', 'dewPoint');
    BuiltValueNullFieldError.checkNotNull(uvi, 'WeatherCurrent', 'uvi');
    BuiltValueNullFieldError.checkNotNull(clouds, 'WeatherCurrent', 'clouds');
    BuiltValueNullFieldError.checkNotNull(visibility, 'WeatherCurrent', 'visibility');
    BuiltValueNullFieldError.checkNotNull(windSpeed, 'WeatherCurrent', 'windSpeed');
    BuiltValueNullFieldError.checkNotNull(windDeg, 'WeatherCurrent', 'windDeg');
    BuiltValueNullFieldError.checkNotNull(windGust, 'WeatherCurrent', 'windGust');
    BuiltValueNullFieldError.checkNotNull(weather, 'WeatherCurrent', 'weather');
  }

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
      _weather = $v.weather.toBuilder();
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
              dt: BuiltValueNullFieldError.checkNotNull(dt, 'WeatherCurrent', 'dt'),
              sunrise: BuiltValueNullFieldError.checkNotNull(sunrise, 'WeatherCurrent', 'sunrise'),
              sunset: BuiltValueNullFieldError.checkNotNull(sunset, 'WeatherCurrent', 'sunset'),
              temp: BuiltValueNullFieldError.checkNotNull(temp, 'WeatherCurrent', 'temp'),
              feelsLike: BuiltValueNullFieldError.checkNotNull(feelsLike, 'WeatherCurrent', 'feelsLike'),
              pressure: BuiltValueNullFieldError.checkNotNull(pressure, 'WeatherCurrent', 'pressure'),
              humidity: BuiltValueNullFieldError.checkNotNull(humidity, 'WeatherCurrent', 'humidity'),
              dewPoint: BuiltValueNullFieldError.checkNotNull(dewPoint, 'WeatherCurrent', 'dewPoint'),
              uvi: BuiltValueNullFieldError.checkNotNull(uvi, 'WeatherCurrent', 'uvi'),
              clouds: BuiltValueNullFieldError.checkNotNull(clouds, 'WeatherCurrent', 'clouds'),
              visibility: BuiltValueNullFieldError.checkNotNull(visibility, 'WeatherCurrent', 'visibility'),
              windSpeed: BuiltValueNullFieldError.checkNotNull(windSpeed, 'WeatherCurrent', 'windSpeed'),
              windDeg: BuiltValueNullFieldError.checkNotNull(windDeg, 'WeatherCurrent', 'windDeg'),
              windGust: BuiltValueNullFieldError.checkNotNull(windGust, 'WeatherCurrent', 'windGust'),
              weather: weather.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weather';
        weather.build();
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
