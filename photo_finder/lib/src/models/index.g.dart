// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();
Serializer<Photo> _$photoSerializer = new _$PhotoSerializer();
Serializer<Poster> _$posterSerializer = new _$PosterSerializer();
Serializer<ProfileImage> _$profileImageSerializer = new _$ProfileImageSerializer();
Serializer<Urls> _$urlsSerializer = new _$UrlsSerializer();
Serializer<AppUser> _$appUserSerializer = new _$AppUserSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'photos',
      serializers.serialize(object.photos, specifiedType: const FullType(BuiltList, const [const FullType(Photo)])),
      'isLoading',
      serializers.serialize(object.isLoading, specifiedType: const FullType(bool)),
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'query',
      serializers.serialize(object.query, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result..add('user')..add(serializers.serialize(value, specifiedType: const FullType(AppUser)));
    }
    value = object.error;
    if (value != null) {
      result..add('error')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.selectedPhoto;
    if (value != null) {
      result..add('selectedPhoto')..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value, specifiedType: const FullType(AppUser))! as AppUser);
          break;
        case 'photos':
          result.photos.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [const FullType(Photo)]))! as BuiltList<Object?>);
          break;
        case 'isLoading':
          result.isLoading = serializers.deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'error':
          result.error = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'page':
          result.page = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'selectedPhoto':
          result.selectedPhoto = serializers.deserialize(value, specifiedType: const FullType(int)) as int?;
          break;
        case 'query':
          result.query = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PhotoSerializer implements StructuredSerializer<Photo> {
  @override
  final Iterable<Type> types = const [Photo, _$Photo];
  @override
  final String wireName = 'Photo';

  @override
  Iterable<Object?> serialize(Serializers serializers, Photo object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'likes',
      serializers.serialize(object.likes, specifiedType: const FullType(int)),
      'user',
      serializers.serialize(object.user, specifiedType: const FullType(Poster)),
      'urls',
      serializers.serialize(object.urls, specifiedType: const FullType(Urls)),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result..add('description')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Photo deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhotoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'description':
          result.description = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value, specifiedType: const FullType(Poster))! as Poster);
          break;
        case 'urls':
          result.urls.replace(serializers.deserialize(value, specifiedType: const FullType(Urls))! as Urls);
          break;
      }
    }

    return result.build();
  }
}

class _$PosterSerializer implements StructuredSerializer<Poster> {
  @override
  final Iterable<Type> types = const [Poster, _$Poster];
  @override
  final String wireName = 'Poster';

  @override
  Iterable<Object?> serialize(Serializers serializers, Poster object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'profile_image',
      serializers.serialize(object.profileImage, specifiedType: const FullType(ProfileImage)),
    ];

    return result;
  }

  @override
  Poster deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PosterBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'profile_image':
          result.profileImage
              .replace(serializers.deserialize(value, specifiedType: const FullType(ProfileImage))! as ProfileImage);
          break;
      }
    }

    return result.build();
  }
}

class _$ProfileImageSerializer implements StructuredSerializer<ProfileImage> {
  @override
  final Iterable<Type> types = const [ProfileImage, _$ProfileImage];
  @override
  final String wireName = 'ProfileImage';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProfileImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'small',
      serializers.serialize(object.small, specifiedType: const FullType(String)),
      'medium',
      serializers.serialize(object.medium, specifiedType: const FullType(String)),
      'large',
      serializers.serialize(object.large, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ProfileImage deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProfileImageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'small':
          result.small = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'medium':
          result.medium = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'large':
          result.large = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UrlsSerializer implements StructuredSerializer<Urls> {
  @override
  final Iterable<Type> types = const [Urls, _$Urls];
  @override
  final String wireName = 'Urls';

  @override
  Iterable<Object?> serialize(Serializers serializers, Urls object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'raw',
      serializers.serialize(object.raw, specifiedType: const FullType(String)),
      'full',
      serializers.serialize(object.full, specifiedType: const FullType(String)),
      'regular',
      serializers.serialize(object.regular, specifiedType: const FullType(String)),
      'small',
      serializers.serialize(object.small, specifiedType: const FullType(String)),
      'thumb',
      serializers.serialize(object.thumb, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Urls deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UrlsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'raw':
          result.raw = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'full':
          result.full = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'regular':
          result.regular = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'small':
          result.small = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'thumb':
          result.thumb = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppUserSerializer implements StructuredSerializer<AppUser> {
  @override
  final Iterable<Type> types = const [AppUser, _$AppUser];
  @override
  final String wireName = 'AppUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.photoUrl;
    if (value != null) {
      result..add('photoUrl')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final AppUser? user;
  @override
  final BuiltList<Photo> photos;
  @override
  final bool isLoading;
  @override
  final String? error;
  @override
  final int page;
  @override
  final int? selectedPhoto;
  @override
  final String query;

  factory _$AppState([void Function(AppStateBuilder)? updates]) => (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {this.user,
      required this.photos,
      required this.isLoading,
      this.error,
      required this.page,
      this.selectedPhoto,
      required this.query})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(photos, 'AppState', 'photos');
    BuiltValueNullFieldError.checkNotNull(isLoading, 'AppState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(page, 'AppState', 'page');
    BuiltValueNullFieldError.checkNotNull(query, 'AppState', 'query');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        user == other.user &&
        photos == other.photos &&
        isLoading == other.isLoading &&
        error == other.error &&
        page == other.page &&
        selectedPhoto == other.selectedPhoto &&
        query == other.query;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc($jc(0, user.hashCode), photos.hashCode), isLoading.hashCode), error.hashCode),
                page.hashCode),
            selectedPhoto.hashCode),
        query.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('user', user)
          ..add('photos', photos)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('page', page)
          ..add('selectedPhoto', selectedPhoto)
          ..add('query', query))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  AppUserBuilder? _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder? user) => _$this._user = user;

  ListBuilder<Photo>? _photos;
  ListBuilder<Photo> get photos => _$this._photos ??= new ListBuilder<Photo>();
  set photos(ListBuilder<Photo>? photos) => _$this._photos = photos;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _selectedPhoto;
  int? get selectedPhoto => _$this._selectedPhoto;
  set selectedPhoto(int? selectedPhoto) => _$this._selectedPhoto = selectedPhoto;

  String? _query;
  String? get query => _$this._query;
  set query(String? query) => _$this._query = query;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _photos = $v.photos.toBuilder();
      _isLoading = $v.isLoading;
      _error = $v.error;
      _page = $v.page;
      _selectedPhoto = $v.selectedPhoto;
      _query = $v.query;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              user: _user?.build(),
              photos: photos.build(),
              isLoading: BuiltValueNullFieldError.checkNotNull(isLoading, 'AppState', 'isLoading'),
              error: error,
              page: BuiltValueNullFieldError.checkNotNull(page, 'AppState', 'page'),
              selectedPhoto: selectedPhoto,
              query: BuiltValueNullFieldError.checkNotNull(query, 'AppState', 'query'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'photos';
        photos.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Photo extends Photo {
  @override
  final String id;
  @override
  final int likes;
  @override
  final String? description;
  @override
  final Poster user;
  @override
  final Urls urls;

  factory _$Photo([void Function(PhotoBuilder)? updates]) => (new PhotoBuilder()..update(updates)).build();

  _$Photo._({required this.id, required this.likes, this.description, required this.user, required this.urls})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Photo', 'id');
    BuiltValueNullFieldError.checkNotNull(likes, 'Photo', 'likes');
    BuiltValueNullFieldError.checkNotNull(user, 'Photo', 'user');
    BuiltValueNullFieldError.checkNotNull(urls, 'Photo', 'urls');
  }

  @override
  Photo rebuild(void Function(PhotoBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  PhotoBuilder toBuilder() => new PhotoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Photo &&
        id == other.id &&
        likes == other.likes &&
        description == other.description &&
        user == other.user &&
        urls == other.urls;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc($jc($jc(0, id.hashCode), likes.hashCode), description.hashCode), user.hashCode), urls.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Photo')
          ..add('id', id)
          ..add('likes', likes)
          ..add('description', description)
          ..add('user', user)
          ..add('urls', urls))
        .toString();
  }
}

class PhotoBuilder implements Builder<Photo, PhotoBuilder> {
  _$Photo? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _likes;
  int? get likes => _$this._likes;
  set likes(int? likes) => _$this._likes = likes;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  PosterBuilder? _user;
  PosterBuilder get user => _$this._user ??= new PosterBuilder();
  set user(PosterBuilder? user) => _$this._user = user;

  UrlsBuilder? _urls;
  UrlsBuilder get urls => _$this._urls ??= new UrlsBuilder();
  set urls(UrlsBuilder? urls) => _$this._urls = urls;

  PhotoBuilder();

  PhotoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _likes = $v.likes;
      _description = $v.description;
      _user = $v.user.toBuilder();
      _urls = $v.urls.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Photo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Photo;
  }

  @override
  void update(void Function(PhotoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Photo build() {
    _$Photo _$result;
    try {
      _$result = _$v ??
          new _$Photo._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Photo', 'id'),
              likes: BuiltValueNullFieldError.checkNotNull(likes, 'Photo', 'likes'),
              description: description,
              user: user.build(),
              urls: urls.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
        _$failedField = 'urls';
        urls.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('Photo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Poster extends Poster {
  @override
  final String id;
  @override
  final String name;
  @override
  final ProfileImage profileImage;

  factory _$Poster([void Function(PosterBuilder)? updates]) => (new PosterBuilder()..update(updates)).build();

  _$Poster._({required this.id, required this.name, required this.profileImage}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Poster', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'Poster', 'name');
    BuiltValueNullFieldError.checkNotNull(profileImage, 'Poster', 'profileImage');
  }

  @override
  Poster rebuild(void Function(PosterBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  PosterBuilder toBuilder() => new PosterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Poster && id == other.id && name == other.name && profileImage == other.profileImage;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), profileImage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Poster')..add('id', id)..add('name', name)..add('profileImage', profileImage))
        .toString();
  }
}

class PosterBuilder implements Builder<Poster, PosterBuilder> {
  _$Poster? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ProfileImageBuilder? _profileImage;
  ProfileImageBuilder get profileImage => _$this._profileImage ??= new ProfileImageBuilder();
  set profileImage(ProfileImageBuilder? profileImage) => _$this._profileImage = profileImage;

  PosterBuilder();

  PosterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _profileImage = $v.profileImage.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Poster other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Poster;
  }

  @override
  void update(void Function(PosterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Poster build() {
    _$Poster _$result;
    try {
      _$result = _$v ??
          new _$Poster._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Poster', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(name, 'Poster', 'name'),
              profileImage: profileImage.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profileImage';
        profileImage.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('Poster', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ProfileImage extends ProfileImage {
  @override
  final String small;
  @override
  final String medium;
  @override
  final String large;

  factory _$ProfileImage([void Function(ProfileImageBuilder)? updates]) =>
      (new ProfileImageBuilder()..update(updates)).build();

  _$ProfileImage._({required this.small, required this.medium, required this.large}) : super._() {
    BuiltValueNullFieldError.checkNotNull(small, 'ProfileImage', 'small');
    BuiltValueNullFieldError.checkNotNull(medium, 'ProfileImage', 'medium');
    BuiltValueNullFieldError.checkNotNull(large, 'ProfileImage', 'large');
  }

  @override
  ProfileImage rebuild(void Function(ProfileImageBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  ProfileImageBuilder toBuilder() => new ProfileImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileImage && small == other.small && medium == other.medium && large == other.large;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, small.hashCode), medium.hashCode), large.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProfileImage')
          ..add('small', small)
          ..add('medium', medium)
          ..add('large', large))
        .toString();
  }
}

class ProfileImageBuilder implements Builder<ProfileImage, ProfileImageBuilder> {
  _$ProfileImage? _$v;

  String? _small;
  String? get small => _$this._small;
  set small(String? small) => _$this._small = small;

  String? _medium;
  String? get medium => _$this._medium;
  set medium(String? medium) => _$this._medium = medium;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  ProfileImageBuilder();

  ProfileImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _small = $v.small;
      _medium = $v.medium;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfileImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProfileImage;
  }

  @override
  void update(void Function(ProfileImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProfileImage build() {
    final _$result = _$v ??
        new _$ProfileImage._(
            small: BuiltValueNullFieldError.checkNotNull(small, 'ProfileImage', 'small'),
            medium: BuiltValueNullFieldError.checkNotNull(medium, 'ProfileImage', 'medium'),
            large: BuiltValueNullFieldError.checkNotNull(large, 'ProfileImage', 'large'));
    replace(_$result);
    return _$result;
  }
}

class _$Urls extends Urls {
  @override
  final String raw;
  @override
  final String full;
  @override
  final String regular;
  @override
  final String small;
  @override
  final String thumb;

  factory _$Urls([void Function(UrlsBuilder)? updates]) => (new UrlsBuilder()..update(updates)).build();

  _$Urls._({required this.raw, required this.full, required this.regular, required this.small, required this.thumb})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(raw, 'Urls', 'raw');
    BuiltValueNullFieldError.checkNotNull(full, 'Urls', 'full');
    BuiltValueNullFieldError.checkNotNull(regular, 'Urls', 'regular');
    BuiltValueNullFieldError.checkNotNull(small, 'Urls', 'small');
    BuiltValueNullFieldError.checkNotNull(thumb, 'Urls', 'thumb');
  }

  @override
  Urls rebuild(void Function(UrlsBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  UrlsBuilder toBuilder() => new UrlsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Urls &&
        raw == other.raw &&
        full == other.full &&
        regular == other.regular &&
        small == other.small &&
        thumb == other.thumb;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc($jc($jc(0, raw.hashCode), full.hashCode), regular.hashCode), small.hashCode), thumb.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Urls')
          ..add('raw', raw)
          ..add('full', full)
          ..add('regular', regular)
          ..add('small', small)
          ..add('thumb', thumb))
        .toString();
  }
}

class UrlsBuilder implements Builder<Urls, UrlsBuilder> {
  _$Urls? _$v;

  String? _raw;
  String? get raw => _$this._raw;
  set raw(String? raw) => _$this._raw = raw;

  String? _full;
  String? get full => _$this._full;
  set full(String? full) => _$this._full = full;

  String? _regular;
  String? get regular => _$this._regular;
  set regular(String? regular) => _$this._regular = regular;

  String? _small;
  String? get small => _$this._small;
  set small(String? small) => _$this._small = small;

  String? _thumb;
  String? get thumb => _$this._thumb;
  set thumb(String? thumb) => _$this._thumb = thumb;

  UrlsBuilder();

  UrlsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _raw = $v.raw;
      _full = $v.full;
      _regular = $v.regular;
      _small = $v.small;
      _thumb = $v.thumb;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Urls other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Urls;
  }

  @override
  void update(void Function(UrlsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Urls build() {
    final _$result = _$v ??
        new _$Urls._(
            raw: BuiltValueNullFieldError.checkNotNull(raw, 'Urls', 'raw'),
            full: BuiltValueNullFieldError.checkNotNull(full, 'Urls', 'full'),
            regular: BuiltValueNullFieldError.checkNotNull(regular, 'Urls', 'regular'),
            small: BuiltValueNullFieldError.checkNotNull(small, 'Urls', 'small'),
            thumb: BuiltValueNullFieldError.checkNotNull(thumb, 'Urls', 'thumb'));
    replace(_$result);
    return _$result;
  }
}

class _$AppUser extends AppUser {
  @override
  final String uid;
  @override
  final String username;
  @override
  final String email;
  @override
  final String? photoUrl;

  factory _$AppUser([void Function(AppUserBuilder)? updates]) => (new AppUserBuilder()..update(updates)).build();

  _$AppUser._({required this.uid, required this.username, required this.email, this.photoUrl}) : super._() {
    BuiltValueNullFieldError.checkNotNull(uid, 'AppUser', 'uid');
    BuiltValueNullFieldError.checkNotNull(username, 'AppUser', 'username');
    BuiltValueNullFieldError.checkNotNull(email, 'AppUser', 'email');
  }

  @override
  AppUser rebuild(void Function(AppUserBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  AppUserBuilder toBuilder() => new AppUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppUser &&
        uid == other.uid &&
        username == other.username &&
        email == other.email &&
        photoUrl == other.photoUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, uid.hashCode), username.hashCode), email.hashCode), photoUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppUser')
          ..add('uid', uid)
          ..add('username', username)
          ..add('email', email)
          ..add('photoUrl', photoUrl))
        .toString();
  }
}

class AppUserBuilder implements Builder<AppUser, AppUserBuilder> {
  _$AppUser? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  AppUserBuilder();

  AppUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _username = $v.username;
      _email = $v.email;
      _photoUrl = $v.photoUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppUser;
  }

  @override
  void update(void Function(AppUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppUser build() {
    final _$result = _$v ??
        new _$AppUser._(
            uid: BuiltValueNullFieldError.checkNotNull(uid, 'AppUser', 'uid'),
            username: BuiltValueNullFieldError.checkNotNull(username, 'AppUser', 'username'),
            email: BuiltValueNullFieldError.checkNotNull(email, 'AppUser', 'email'),
            photoUrl: photoUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
