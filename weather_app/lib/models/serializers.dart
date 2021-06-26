import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'geoloc.dart';
import 'weather.dart';
import 'weather_current.dart';
import 'weather_data.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  Geoloc,
  Weather,
  WeatherCurrent,
  WeatherData,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..addPlugin(StandardJsonPlugin()))
    .build();
