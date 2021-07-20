part of models;

abstract class Weather implements Built<Weather, WeatherBuilder> {
  factory Weather([void Function(WeatherBuilder) updates]) = _$Weather;

  factory Weather.fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(serializer, json)!;
  }

  Weather._();

  String? get cod;

  String? get message;

  double? get lat;

  double? get lon;

  String? get timezone;

  @BuiltValueField(wireName: 'timezone_offset')
  int? get timezoneOffset;

  WeatherCurrent? get current;

  static Serializer<Weather> get serializer => _$weatherSerializer;
}
