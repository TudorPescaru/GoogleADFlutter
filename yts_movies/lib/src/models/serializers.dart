import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:yts_movies/src/models/index.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  Movie,
  Torrent,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..addPlugin(StandardJsonPlugin()))
    .build();
