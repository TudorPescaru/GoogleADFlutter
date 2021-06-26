import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';
import 'weather_current.dart';

part 'weather.g.dart';

abstract class Weather implements Built<Weather, WeatherBuilder> {
  factory Weather([void Function(WeatherBuilder) updates]) = _$Weather;

  factory Weather.fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(serializer, json) as Weather;
  }

  Weather._();

  double get lat;
  double get lon;
  String get timezone;
  @BuiltValueField(wireName: 'timezone_offset')
  int get timezoneOffset;
  WeatherCurrent get current;

  static Serializer<Weather> get serializer => _$weatherSerializer;
}
