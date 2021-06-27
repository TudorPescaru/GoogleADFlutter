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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
