library torrent;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:yts_movies/src/models/serializers.dart';

part 'torrent.g.dart';

abstract class Torrent implements Built<Torrent, TorrentBuilder> {
  factory Torrent([void Function(TorrentBuilder b) updates]) = _$Torrent;

  factory Torrent.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Torrent._();

  String get url;

  String get hash;

  String get quality;

  String get type;

  int get seeds;

  int get peers;

  String get size;

  @BuiltValueField(wireName: 'size_bytes')
  int get sizeBytes;

  @BuiltValueField(wireName: 'date_uploaded')
  String get dateUploaded;

  @BuiltValueField(wireName: 'date_uploaded_unix')
  int get dateUploadedUnix;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Torrent> get serializer => _$torrentSerializer;
}
