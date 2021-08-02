part of models;

abstract class Comment implements Built<Comment, CommentBuilder> {
  factory Comment(
      {required String id, required String uid, required String photoId, required String text, DateTime? createdAt}) {
    return _$Comment((CommentBuilder b) {
      b
        ..id = id
        ..uid = uid
        ..photoId = photoId
        ..text = text
        ..createdAt = createdAt ?? DateTime.now();
    });
  }

  factory Comment.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Comment._();

  String get id;

  String get uid;

  String get photoId;

  String get text;

  DateTime get createdAt;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Comment> get serializer => _$commentSerializer;
}
