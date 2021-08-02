part of models;

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState() {
    return _$AppState((AppStateBuilder b) {
      b
        ..isLoading = false
        ..page = 1
        ..query = 'dogs';
    });
  }
  factory AppState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  AppState._();

  AppUser? get user;

  BuiltMap<String, AppUser> get users;

  BuiltList<Photo> get photos;

  BuiltList<Comment> get comments;

  bool get isLoading;

  String? get error;

  int get page;

  String? get selectedPhoto;

  String get query;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
