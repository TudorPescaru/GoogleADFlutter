part of models;

abstract class User implements Built<User, UserBuilder> {
  factory User([void Function(UserBuilder b) updates]) = _$User;
  factory User.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  User._();

  String get id;

  String get name;

  @BuiltValueField(wireName: 'profile_image')
  ProfileImage get profileImage;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<User> get serializer => _$userSerializer;
}
