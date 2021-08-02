part of models;

abstract class Photo implements Built<Photo, PhotoBuilder> {
  factory Photo([void Function(PhotoBuilder b) updates]) = _$Photo;
  factory Photo.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Photo._();

  String get id;

  int get likes;

  String? get description;

  Poster get user;

  Urls get urls;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Photo> get serializer => _$photoSerializer;
}
