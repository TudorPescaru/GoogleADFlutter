// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();
Serializer<Ip> _$ipSerializer = new _$IpSerializer();
Serializer<Geoloc> _$geolocSerializer = new _$GeolocSerializer();
Serializer<Weather> _$weatherSerializer = new _$WeatherSerializer();
Serializer<WeatherData> _$weatherDataSerializer = new _$WeatherDataSerializer();
Serializer<WeatherCurrent> _$weatherCurrentSerializer = new _$WeatherCurrentSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'isLoading',
      serializers.serialize(object.isLoading, specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.ip;
    if (value != null) {
      result..add('ip')..add(serializers.serialize(value, specifiedType: const FullType(Ip)));
    }
    value = object.geoloc;
    if (value != null) {
      result..add('geoloc')..add(serializers.serialize(value, specifiedType: const FullType(Geoloc)));
    }
    value = object.weather;
    if (value != null) {
      result..add('weather')..add(serializers.serialize(value, specifiedType: const FullType(Weather)));
    }
    value = object.error;
    if (value != null) {
      result..add('error')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ip':
          result.ip.replace(serializers.deserialize(value, specifiedType: const FullType(Ip))! as Ip);
          break;
        case 'geoloc':
          result.geoloc.replace(serializers.deserialize(value, specifiedType: const FullType(Geoloc))! as Geoloc);
          break;
        case 'weather':
          result.weather.replace(serializers.deserialize(value, specifiedType: const FullType(Weather))! as Weather);
          break;
        case 'isLoading':
          result.isLoading = serializers.deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'error':
          result.error = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$IpSerializer implements StructuredSerializer<Ip> {
  @override
  final Iterable<Type> types = const [Ip, _$Ip];
  @override
  final String wireName = 'Ip';

  @override
  Iterable<Object?> serialize(Serializers serializers, Ip object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'ip',
      serializers.serialize(object.ip, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Ip deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IpBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ip':
          result.ip = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GeolocSerializer implements StructuredSerializer<Geoloc> {
  @override
  final Iterable<Type> types = const [Geoloc, _$Geoloc];
  @override
  final String wireName = 'Geoloc';

  @override
  Iterable<Object?> serialize(Serializers serializers, Geoloc object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.query;
    if (value != null) {
      result..add('query')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result..add('status')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.message;
    if (value != null) {
      result..add('message')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result..add('country')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.countryCode;
    if (value != null) {
      result..add('countryCode')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.region;
    if (value != null) {
      result..add('region')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.regionName;
    if (value != null) {
      result..add('regionName')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result..add('city')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.zip;
    if (value != null) {
      result..add('zip')..add(serializers.serialize(value, specifiedType: const FullType(String)));
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
    value = object.isp;
    if (value != null) {
      result..add('isp')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.org;
    if (value != null) {
      result..add('org')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.as;
    if (value != null) {
      result..add('as')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Geoloc deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GeolocBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'query':
          result.query = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'message':
          result.message = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'countryCode':
          result.countryCode = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'region':
          result.region = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'regionName':
          result.regionName = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'zip':
          result.zip = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
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
        case 'isp':
          result.isp = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'org':
          result.org = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'as':
          result.as = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

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

class _$WeatherDataSerializer implements StructuredSerializer<WeatherData> {
  @override
  final Iterable<Type> types = const [WeatherData, _$WeatherData];
  @override
  final String wireName = 'WeatherData';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result..add('id')..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.main;
    if (value != null) {
      result..add('main')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result..add('description')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.icon;
    if (value != null) {
      result..add('icon')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  WeatherData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value, specifiedType: const FullType(int)) as int?;
          break;
        case 'main':
          result.main = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

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

class _$AppState extends AppState {
  @override
  final Ip? ip;
  @override
  final Geoloc? geoloc;
  @override
  final Weather? weather;
  @override
  final bool isLoading;
  @override
  final String? error;

  factory _$AppState([void Function(AppStateBuilder)? updates]) => (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.ip, this.geoloc, this.weather, required this.isLoading, this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(isLoading, 'AppState', 'isLoading');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        ip == other.ip &&
        geoloc == other.geoloc &&
        weather == other.weather &&
        isLoading == other.isLoading &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc($jc($jc(0, ip.hashCode), geoloc.hashCode), weather.hashCode), isLoading.hashCode), error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('ip', ip)
          ..add('geoloc', geoloc)
          ..add('weather', weather)
          ..add('isLoading', isLoading)
          ..add('error', error))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  IpBuilder? _ip;
  IpBuilder get ip => _$this._ip ??= new IpBuilder();
  set ip(IpBuilder? ip) => _$this._ip = ip;

  GeolocBuilder? _geoloc;
  GeolocBuilder get geoloc => _$this._geoloc ??= new GeolocBuilder();
  set geoloc(GeolocBuilder? geoloc) => _$this._geoloc = geoloc;

  WeatherBuilder? _weather;
  WeatherBuilder get weather => _$this._weather ??= new WeatherBuilder();
  set weather(WeatherBuilder? weather) => _$this._weather = weather;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ip = $v.ip?.toBuilder();
      _geoloc = $v.geoloc?.toBuilder();
      _weather = $v.weather?.toBuilder();
      _isLoading = $v.isLoading;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              ip: _ip?.build(),
              geoloc: _geoloc?.build(),
              weather: _weather?.build(),
              isLoading: BuiltValueNullFieldError.checkNotNull(isLoading, 'AppState', 'isLoading'),
              error: error);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ip';
        _ip?.build();
        _$failedField = 'geoloc';
        _geoloc?.build();
        _$failedField = 'weather';
        _weather?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Ip extends Ip {
  @override
  final String ip;

  factory _$Ip([void Function(IpBuilder)? updates]) => (new IpBuilder()..update(updates)).build();

  _$Ip._({required this.ip}) : super._() {
    BuiltValueNullFieldError.checkNotNull(ip, 'Ip', 'ip');
  }

  @override
  Ip rebuild(void Function(IpBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  IpBuilder toBuilder() => new IpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ip && ip == other.ip;
  }

  @override
  int get hashCode {
    return $jf($jc(0, ip.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Ip')..add('ip', ip)).toString();
  }
}

class IpBuilder implements Builder<Ip, IpBuilder> {
  _$Ip? _$v;

  String? _ip;
  String? get ip => _$this._ip;
  set ip(String? ip) => _$this._ip = ip;

  IpBuilder();

  IpBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ip = $v.ip;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ip other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ip;
  }

  @override
  void update(void Function(IpBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Ip build() {
    final _$result = _$v ?? new _$Ip._(ip: BuiltValueNullFieldError.checkNotNull(ip, 'Ip', 'ip'));
    replace(_$result);
    return _$result;
  }
}

class _$Geoloc extends Geoloc {
  @override
  final String? query;
  @override
  final String? status;
  @override
  final String? message;
  @override
  final String? country;
  @override
  final String? countryCode;
  @override
  final String? region;
  @override
  final String? regionName;
  @override
  final String? city;
  @override
  final String? zip;
  @override
  final double? lat;
  @override
  final double? lon;
  @override
  final String? timezone;
  @override
  final String? isp;
  @override
  final String? org;
  @override
  final String? as;

  factory _$Geoloc([void Function(GeolocBuilder)? updates]) => (new GeolocBuilder()..update(updates)).build();

  _$Geoloc._(
      {this.query,
      this.status,
      this.message,
      this.country,
      this.countryCode,
      this.region,
      this.regionName,
      this.city,
      this.zip,
      this.lat,
      this.lon,
      this.timezone,
      this.isp,
      this.org,
      this.as})
      : super._();

  @override
  Geoloc rebuild(void Function(GeolocBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  GeolocBuilder toBuilder() => new GeolocBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Geoloc &&
        query == other.query &&
        status == other.status &&
        message == other.message &&
        country == other.country &&
        countryCode == other.countryCode &&
        region == other.region &&
        regionName == other.regionName &&
        city == other.city &&
        zip == other.zip &&
        lat == other.lat &&
        lon == other.lon &&
        timezone == other.timezone &&
        isp == other.isp &&
        org == other.org &&
        as == other.as;
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
                                                $jc($jc($jc($jc(0, query.hashCode), status.hashCode), message.hashCode),
                                                    country.hashCode),
                                                countryCode.hashCode),
                                            region.hashCode),
                                        regionName.hashCode),
                                    city.hashCode),
                                zip.hashCode),
                            lat.hashCode),
                        lon.hashCode),
                    timezone.hashCode),
                isp.hashCode),
            org.hashCode),
        as.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Geoloc')
          ..add('query', query)
          ..add('status', status)
          ..add('message', message)
          ..add('country', country)
          ..add('countryCode', countryCode)
          ..add('region', region)
          ..add('regionName', regionName)
          ..add('city', city)
          ..add('zip', zip)
          ..add('lat', lat)
          ..add('lon', lon)
          ..add('timezone', timezone)
          ..add('isp', isp)
          ..add('org', org)
          ..add('as', as))
        .toString();
  }
}

class GeolocBuilder implements Builder<Geoloc, GeolocBuilder> {
  _$Geoloc? _$v;

  String? _query;
  String? get query => _$this._query;
  set query(String? query) => _$this._query = query;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _countryCode;
  String? get countryCode => _$this._countryCode;
  set countryCode(String? countryCode) => _$this._countryCode = countryCode;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _zip;
  String? get zip => _$this._zip;
  set zip(String? zip) => _$this._zip = zip;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _lon;
  double? get lon => _$this._lon;
  set lon(double? lon) => _$this._lon = lon;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  String? _isp;
  String? get isp => _$this._isp;
  set isp(String? isp) => _$this._isp = isp;

  String? _org;
  String? get org => _$this._org;
  set org(String? org) => _$this._org = org;

  String? _as;
  String? get as => _$this._as;
  set as(String? as) => _$this._as = as;

  GeolocBuilder();

  GeolocBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _query = $v.query;
      _status = $v.status;
      _message = $v.message;
      _country = $v.country;
      _countryCode = $v.countryCode;
      _region = $v.region;
      _regionName = $v.regionName;
      _city = $v.city;
      _zip = $v.zip;
      _lat = $v.lat;
      _lon = $v.lon;
      _timezone = $v.timezone;
      _isp = $v.isp;
      _org = $v.org;
      _as = $v.as;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Geoloc other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Geoloc;
  }

  @override
  void update(void Function(GeolocBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Geoloc build() {
    final _$result = _$v ??
        new _$Geoloc._(
            query: query,
            status: status,
            message: message,
            country: country,
            countryCode: countryCode,
            region: region,
            regionName: regionName,
            city: city,
            zip: zip,
            lat: lat,
            lon: lon,
            timezone: timezone,
            isp: isp,
            org: org,
            as: as);
    replace(_$result);
    return _$result;
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

class _$WeatherData extends WeatherData {
  @override
  final int? id;
  @override
  final String? main;
  @override
  final String? description;
  @override
  final String? icon;

  factory _$WeatherData([void Function(WeatherDataBuilder)? updates]) =>
      (new WeatherDataBuilder()..update(updates)).build();

  _$WeatherData._({this.id, this.main, this.description, this.icon}) : super._();

  @override
  WeatherData rebuild(void Function(WeatherDataBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  WeatherDataBuilder toBuilder() => new WeatherDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherData &&
        id == other.id &&
        main == other.main &&
        description == other.description &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, id.hashCode), main.hashCode), description.hashCode), icon.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WeatherData')
          ..add('id', id)
          ..add('main', main)
          ..add('description', description)
          ..add('icon', icon))
        .toString();
  }
}

class WeatherDataBuilder implements Builder<WeatherData, WeatherDataBuilder> {
  _$WeatherData? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _main;
  String? get main => _$this._main;
  set main(String? main) => _$this._main = main;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  WeatherDataBuilder();

  WeatherDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _main = $v.main;
      _description = $v.description;
      _icon = $v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherData;
  }

  @override
  void update(void Function(WeatherDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WeatherData build() {
    final _$result = _$v ?? new _$WeatherData._(id: id, main: main, description: description, icon: icon);
    replace(_$result);
    return _$result;
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
