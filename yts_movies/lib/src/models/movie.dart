library movie;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:yts_movies/src/models/serializers.dart';
import 'package:yts_movies/src/models/torrent.dart';

part 'movie.g.dart';

abstract class Movie implements Built<Movie, MovieBuilder> {
  factory Movie([void Function(MovieBuilder b) updates]) = _$Movie;

  factory Movie.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Movie._();

  int get id;

  String get url;

  @BuiltValueField(wireName: 'imdb_code')
  String get imdbCode;

  String get title;

  @BuiltValueField(wireName: 'title_english')
  String get titleEnglish;

  @BuiltValueField(wireName: 'title_long')
  String get titleLong;

  String get slug;

  int get year;

  num get rating;

  int get runtime;

  BuiltList<String> get genres;

  String get summary;

  @BuiltValueField(wireName: 'description_full')
  String get descriptionFull;

  String get synopsis;

  @BuiltValueField(wireName: 'yt_trailer_code')
  String get ytTrailerCode;

  String get language;

  @BuiltValueField(wireName: 'mpa_rating')
  String get mpaRating;

  @BuiltValueField(wireName: 'background_image')
  String get backgroundImage;

  @BuiltValueField(wireName: 'background_image_original')
  String get backgroundImageOriginal;

  @BuiltValueField(wireName: 'small_cover_image')
  String get smallCoverImage;

  @BuiltValueField(wireName: 'medium_cover_image')
  String get mediumCoverImage;

  @BuiltValueField(wireName: 'large_cover_image')
  String get largeCoverImage;

  String get state;

  BuiltList<Torrent> get torrents;

  @BuiltValueField(wireName: 'date_uploaded')
  String get dateUploaded;

  @BuiltValueField(wireName: 'date_uploaded_unix')
  int get dateUploadedUnix;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Movie> get serializer => _$movieSerializer;
}
