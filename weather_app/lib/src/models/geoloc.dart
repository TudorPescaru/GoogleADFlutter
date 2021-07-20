part of models;

abstract class Geoloc implements Built<Geoloc, GeolocBuilder> {
  factory Geoloc([void Function(GeolocBuilder) updates]) = _$Geoloc;

  factory Geoloc.fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(serializer, json)!;
  }

  Geoloc._();

  String? get query;

  String? get status;

  String? get message;

  String? get country;

  String? get countryCode;

  String? get region;

  String? get regionName;

  String? get city;

  String? get zip;

  double? get lat;

  double? get lon;

  String? get timezone;

  String? get isp;

  String? get org;

  String? get as;

  static Serializer<Geoloc> get serializer => _$geolocSerializer;
}
