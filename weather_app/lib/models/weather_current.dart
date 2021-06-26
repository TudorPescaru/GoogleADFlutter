import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'weather_data.dart';
import 'serializers.dart';

part 'weather_current.g.dart';

abstract class WeatherCurrent implements Built<WeatherCurrent, WeatherCurrentBuilder> {
  factory WeatherCurrent([void Function(WeatherCurrentBuilder) updates]) = _$WeatherCurrent;

  factory WeatherCurrent.fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(serializer, json) as WeatherCurrent;
  }

  WeatherCurrent._();

  int get dt;
  int get sunrise;
  int get sunset;
  double get temp;
  @BuiltValueField(wireName: 'feels_like')
  double get feelsLike;
  int get pressure;
  int get humidity;
  @BuiltValueField(wireName: 'dew_point')
  double get dewPoint;
  double get uvi;
  int get clouds;
  int get visibility;
  @BuiltValueField(wireName: 'wind_speed')
  double get windSpeed;
  @BuiltValueField(wireName: 'wind_deg')
  int get windDeg;
  @BuiltValueField(wireName: 'wind_gust')
  double get windGust;
  BuiltList<WeatherData> get weather;

  static Serializer<WeatherCurrent> get serializer => _$weatherCurrentSerializer;
}
