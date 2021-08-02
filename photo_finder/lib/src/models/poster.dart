part of models;

abstract class Poster implements Built<Poster, PosterBuilder> {
  factory Poster([void Function(PosterBuilder b) updates]) = _$Poster;
  factory Poster.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Poster._();

  String get id;

  String get name;

  @BuiltValueField(wireName: 'profile_image')
  ProfileImage get profileImage;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Poster> get serializer => _$posterSerializer;
}
