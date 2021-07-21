part of models;

abstract class ProfileImage implements Built<ProfileImage, ProfileImageBuilder> {
  factory ProfileImage([void Function(ProfileImageBuilder b) updates]) = _$ProfileImage;
  factory ProfileImage.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  ProfileImage._();

  String get small;

  String get medium;

  String get large;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<ProfileImage> get serializer => _$profileImageSerializer;
}
