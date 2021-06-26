// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geoloc.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Geoloc> _$geolocSerializer = new _$GeolocSerializer();

class _$GeolocSerializer implements StructuredSerializer<Geoloc> {
  @override
  final Iterable<Type> types = const [Geoloc, _$Geoloc];
  @override
  final String wireName = 'Geoloc';

  @override
  Iterable<Object?> serialize(Serializers serializers, Geoloc object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'query',
      serializers.serialize(object.query, specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(String)),
      'country',
      serializers.serialize(object.country, specifiedType: const FullType(String)),
      'countryCode',
      serializers.serialize(object.countryCode, specifiedType: const FullType(String)),
      'region',
      serializers.serialize(object.region, specifiedType: const FullType(String)),
      'regionName',
      serializers.serialize(object.regionName, specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'zip',
      serializers.serialize(object.zip, specifiedType: const FullType(String)),
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(double)),
      'lon',
      serializers.serialize(object.lon, specifiedType: const FullType(double)),
      'timezone',
      serializers.serialize(object.timezone, specifiedType: const FullType(String)),
      'isp',
      serializers.serialize(object.isp, specifiedType: const FullType(String)),
      'org',
      serializers.serialize(object.org, specifiedType: const FullType(String)),
      'as',
      serializers.serialize(object.as, specifiedType: const FullType(String)),
    ];

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
          result.query = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'country':
          result.country = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'countryCode':
          result.countryCode = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'region':
          result.region = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'regionName':
          result.regionName = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'zip':
          result.zip = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value, specifiedType: const FullType(double)) as double;
          break;
        case 'lon':
          result.lon = serializers.deserialize(value, specifiedType: const FullType(double)) as double;
          break;
        case 'timezone':
          result.timezone = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'isp':
          result.isp = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'org':
          result.org = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'as':
          result.as = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Geoloc extends Geoloc {
  @override
  final String query;
  @override
  final String status;
  @override
  final String country;
  @override
  final String countryCode;
  @override
  final String region;
  @override
  final String regionName;
  @override
  final String city;
  @override
  final String zip;
  @override
  final double lat;
  @override
  final double lon;
  @override
  final String timezone;
  @override
  final String isp;
  @override
  final String org;
  @override
  final String as;

  factory _$Geoloc([void Function(GeolocBuilder)? updates]) => (new GeolocBuilder()..update(updates)).build();

  _$Geoloc._(
      {required this.query,
      required this.status,
      required this.country,
      required this.countryCode,
      required this.region,
      required this.regionName,
      required this.city,
      required this.zip,
      required this.lat,
      required this.lon,
      required this.timezone,
      required this.isp,
      required this.org,
      required this.as})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(query, 'Geoloc', 'query');
    BuiltValueNullFieldError.checkNotNull(status, 'Geoloc', 'status');
    BuiltValueNullFieldError.checkNotNull(country, 'Geoloc', 'country');
    BuiltValueNullFieldError.checkNotNull(countryCode, 'Geoloc', 'countryCode');
    BuiltValueNullFieldError.checkNotNull(region, 'Geoloc', 'region');
    BuiltValueNullFieldError.checkNotNull(regionName, 'Geoloc', 'regionName');
    BuiltValueNullFieldError.checkNotNull(city, 'Geoloc', 'city');
    BuiltValueNullFieldError.checkNotNull(zip, 'Geoloc', 'zip');
    BuiltValueNullFieldError.checkNotNull(lat, 'Geoloc', 'lat');
    BuiltValueNullFieldError.checkNotNull(lon, 'Geoloc', 'lon');
    BuiltValueNullFieldError.checkNotNull(timezone, 'Geoloc', 'timezone');
    BuiltValueNullFieldError.checkNotNull(isp, 'Geoloc', 'isp');
    BuiltValueNullFieldError.checkNotNull(org, 'Geoloc', 'org');
    BuiltValueNullFieldError.checkNotNull(as, 'Geoloc', 'as');
  }

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
                                            $jc($jc($jc($jc(0, query.hashCode), status.hashCode), country.hashCode),
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
            query: BuiltValueNullFieldError.checkNotNull(query, 'Geoloc', 'query'),
            status: BuiltValueNullFieldError.checkNotNull(status, 'Geoloc', 'status'),
            country: BuiltValueNullFieldError.checkNotNull(country, 'Geoloc', 'country'),
            countryCode: BuiltValueNullFieldError.checkNotNull(countryCode, 'Geoloc', 'countryCode'),
            region: BuiltValueNullFieldError.checkNotNull(region, 'Geoloc', 'region'),
            regionName: BuiltValueNullFieldError.checkNotNull(regionName, 'Geoloc', 'regionName'),
            city: BuiltValueNullFieldError.checkNotNull(city, 'Geoloc', 'city'),
            zip: BuiltValueNullFieldError.checkNotNull(zip, 'Geoloc', 'zip'),
            lat: BuiltValueNullFieldError.checkNotNull(lat, 'Geoloc', 'lat'),
            lon: BuiltValueNullFieldError.checkNotNull(lon, 'Geoloc', 'lon'),
            timezone: BuiltValueNullFieldError.checkNotNull(timezone, 'Geoloc', 'timezone'),
            isp: BuiltValueNullFieldError.checkNotNull(isp, 'Geoloc', 'isp'),
            org: BuiltValueNullFieldError.checkNotNull(org, 'Geoloc', 'org'),
            as: BuiltValueNullFieldError.checkNotNull(as, 'Geoloc', 'as'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
