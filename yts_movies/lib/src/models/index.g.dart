// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();
Serializer<Movie> _$movieSerializer = new _$MovieSerializer();
Serializer<Torrent> _$torrentSerializer = new _$TorrentSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'movies',
      serializers.serialize(object.movies, specifiedType: const FullType(BuiltList, const [const FullType(Movie)])),
      'isLoading',
      serializers.serialize(object.isLoading, specifiedType: const FullType(bool)),
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.error;
    if (value != null) {
      result..add('error')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.selectedMovie;
    if (value != null) {
      result..add('selectedMovie')..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
        case 'movies':
          result.movies.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [const FullType(Movie)]))! as BuiltList<Object?>);
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
        case 'selectedMovie':
          result.selectedMovie = serializers.deserialize(value, specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieSerializer implements StructuredSerializer<Movie> {
  @override
  final Iterable<Type> types = const [Movie, _$Movie];
  @override
  final String wireName = 'Movie';

  @override
  Iterable<Object?> serialize(Serializers serializers, Movie object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'imdb_code',
      serializers.serialize(object.imdbCode, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title, specifiedType: const FullType(String)),
      'title_english',
      serializers.serialize(object.titleEnglish, specifiedType: const FullType(String)),
      'title_long',
      serializers.serialize(object.titleLong, specifiedType: const FullType(String)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
      'year',
      serializers.serialize(object.year, specifiedType: const FullType(int)),
      'rating',
      serializers.serialize(object.rating, specifiedType: const FullType(num)),
      'runtime',
      serializers.serialize(object.runtime, specifiedType: const FullType(int)),
      'genres',
      serializers.serialize(object.genres, specifiedType: const FullType(BuiltList, const [const FullType(String)])),
      'summary',
      serializers.serialize(object.summary, specifiedType: const FullType(String)),
      'description_full',
      serializers.serialize(object.descriptionFull, specifiedType: const FullType(String)),
      'synopsis',
      serializers.serialize(object.synopsis, specifiedType: const FullType(String)),
      'yt_trailer_code',
      serializers.serialize(object.ytTrailerCode, specifiedType: const FullType(String)),
      'language',
      serializers.serialize(object.language, specifiedType: const FullType(String)),
      'mpa_rating',
      serializers.serialize(object.mpaRating, specifiedType: const FullType(String)),
      'background_image',
      serializers.serialize(object.backgroundImage, specifiedType: const FullType(String)),
      'background_image_original',
      serializers.serialize(object.backgroundImageOriginal, specifiedType: const FullType(String)),
      'small_cover_image',
      serializers.serialize(object.smallCoverImage, specifiedType: const FullType(String)),
      'medium_cover_image',
      serializers.serialize(object.mediumCoverImage, specifiedType: const FullType(String)),
      'large_cover_image',
      serializers.serialize(object.largeCoverImage, specifiedType: const FullType(String)),
      'state',
      serializers.serialize(object.state, specifiedType: const FullType(String)),
      'torrents',
      serializers.serialize(object.torrents, specifiedType: const FullType(BuiltList, const [const FullType(Torrent)])),
      'date_uploaded',
      serializers.serialize(object.dateUploaded, specifiedType: const FullType(String)),
      'date_uploaded_unix',
      serializers.serialize(object.dateUploadedUnix, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Movie deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'imdb_code':
          result.imdbCode = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'title_english':
          result.titleEnglish = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'title_long':
          result.titleLong = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'year':
          result.year = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'runtime':
          result.runtime = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [const FullType(String)]))! as BuiltList<Object?>);
          break;
        case 'summary':
          result.summary = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'description_full':
          result.descriptionFull = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'synopsis':
          result.synopsis = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'yt_trailer_code':
          result.ytTrailerCode = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'language':
          result.language = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'mpa_rating':
          result.mpaRating = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'background_image':
          result.backgroundImage = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'background_image_original':
          result.backgroundImageOriginal =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'small_cover_image':
          result.smallCoverImage = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'medium_cover_image':
          result.mediumCoverImage = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'large_cover_image':
          result.largeCoverImage = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'torrents':
          result.torrents.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [const FullType(Torrent)]))! as BuiltList<Object?>);
          break;
        case 'date_uploaded':
          result.dateUploaded = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'date_uploaded_unix':
          result.dateUploadedUnix = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$TorrentSerializer implements StructuredSerializer<Torrent> {
  @override
  final Iterable<Type> types = const [Torrent, _$Torrent];
  @override
  final String wireName = 'Torrent';

  @override
  Iterable<Object?> serialize(Serializers serializers, Torrent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'hash',
      serializers.serialize(object.hash, specifiedType: const FullType(String)),
      'quality',
      serializers.serialize(object.quality, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'seeds',
      serializers.serialize(object.seeds, specifiedType: const FullType(int)),
      'peers',
      serializers.serialize(object.peers, specifiedType: const FullType(int)),
      'size',
      serializers.serialize(object.size, specifiedType: const FullType(String)),
      'size_bytes',
      serializers.serialize(object.sizeBytes, specifiedType: const FullType(int)),
      'date_uploaded',
      serializers.serialize(object.dateUploaded, specifiedType: const FullType(String)),
      'date_uploaded_unix',
      serializers.serialize(object.dateUploadedUnix, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Torrent deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TorrentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'hash':
          result.hash = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'quality':
          result.quality = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'seeds':
          result.seeds = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'peers':
          result.peers = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'size':
          result.size = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'size_bytes':
          result.sizeBytes = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'date_uploaded':
          result.dateUploaded = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'date_uploaded_unix':
          result.dateUploadedUnix = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final BuiltList<Movie> movies;
  @override
  final bool isLoading;
  @override
  final String? error;
  @override
  final int page;
  @override
  final int? selectedMovie;

  factory _$AppState([void Function(AppStateBuilder)? updates]) => (new AppStateBuilder()..update(updates)).build();

  _$AppState._({required this.movies, required this.isLoading, this.error, required this.page, this.selectedMovie})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(movies, 'AppState', 'movies');
    BuiltValueNullFieldError.checkNotNull(isLoading, 'AppState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(page, 'AppState', 'page');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        movies == other.movies &&
        isLoading == other.isLoading &&
        error == other.error &&
        page == other.page &&
        selectedMovie == other.selectedMovie;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc($jc(0, movies.hashCode), isLoading.hashCode), error.hashCode), page.hashCode),
        selectedMovie.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('movies', movies)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('page', page)
          ..add('selectedMovie', selectedMovie))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  ListBuilder<Movie>? _movies;
  ListBuilder<Movie> get movies => _$this._movies ??= new ListBuilder<Movie>();
  set movies(ListBuilder<Movie>? movies) => _$this._movies = movies;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _selectedMovie;
  int? get selectedMovie => _$this._selectedMovie;
  set selectedMovie(int? selectedMovie) => _$this._selectedMovie = selectedMovie;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _movies = $v.movies.toBuilder();
      _isLoading = $v.isLoading;
      _error = $v.error;
      _page = $v.page;
      _selectedMovie = $v.selectedMovie;
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
              movies: movies.build(),
              isLoading: BuiltValueNullFieldError.checkNotNull(isLoading, 'AppState', 'isLoading'),
              error: error,
              page: BuiltValueNullFieldError.checkNotNull(page, 'AppState', 'page'),
              selectedMovie: selectedMovie);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'movies';
        movies.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Movie extends Movie {
  @override
  final int id;
  @override
  final String url;
  @override
  final String imdbCode;
  @override
  final String title;
  @override
  final String titleEnglish;
  @override
  final String titleLong;
  @override
  final String slug;
  @override
  final int year;
  @override
  final num rating;
  @override
  final int runtime;
  @override
  final BuiltList<String> genres;
  @override
  final String summary;
  @override
  final String descriptionFull;
  @override
  final String synopsis;
  @override
  final String ytTrailerCode;
  @override
  final String language;
  @override
  final String mpaRating;
  @override
  final String backgroundImage;
  @override
  final String backgroundImageOriginal;
  @override
  final String smallCoverImage;
  @override
  final String mediumCoverImage;
  @override
  final String largeCoverImage;
  @override
  final String state;
  @override
  final BuiltList<Torrent> torrents;
  @override
  final String dateUploaded;
  @override
  final int dateUploadedUnix;

  factory _$Movie([void Function(MovieBuilder)? updates]) => (new MovieBuilder()..update(updates)).build();

  _$Movie._(
      {required this.id,
      required this.url,
      required this.imdbCode,
      required this.title,
      required this.titleEnglish,
      required this.titleLong,
      required this.slug,
      required this.year,
      required this.rating,
      required this.runtime,
      required this.genres,
      required this.summary,
      required this.descriptionFull,
      required this.synopsis,
      required this.ytTrailerCode,
      required this.language,
      required this.mpaRating,
      required this.backgroundImage,
      required this.backgroundImageOriginal,
      required this.smallCoverImage,
      required this.mediumCoverImage,
      required this.largeCoverImage,
      required this.state,
      required this.torrents,
      required this.dateUploaded,
      required this.dateUploadedUnix})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Movie', 'id');
    BuiltValueNullFieldError.checkNotNull(url, 'Movie', 'url');
    BuiltValueNullFieldError.checkNotNull(imdbCode, 'Movie', 'imdbCode');
    BuiltValueNullFieldError.checkNotNull(title, 'Movie', 'title');
    BuiltValueNullFieldError.checkNotNull(titleEnglish, 'Movie', 'titleEnglish');
    BuiltValueNullFieldError.checkNotNull(titleLong, 'Movie', 'titleLong');
    BuiltValueNullFieldError.checkNotNull(slug, 'Movie', 'slug');
    BuiltValueNullFieldError.checkNotNull(year, 'Movie', 'year');
    BuiltValueNullFieldError.checkNotNull(rating, 'Movie', 'rating');
    BuiltValueNullFieldError.checkNotNull(runtime, 'Movie', 'runtime');
    BuiltValueNullFieldError.checkNotNull(genres, 'Movie', 'genres');
    BuiltValueNullFieldError.checkNotNull(summary, 'Movie', 'summary');
    BuiltValueNullFieldError.checkNotNull(descriptionFull, 'Movie', 'descriptionFull');
    BuiltValueNullFieldError.checkNotNull(synopsis, 'Movie', 'synopsis');
    BuiltValueNullFieldError.checkNotNull(ytTrailerCode, 'Movie', 'ytTrailerCode');
    BuiltValueNullFieldError.checkNotNull(language, 'Movie', 'language');
    BuiltValueNullFieldError.checkNotNull(mpaRating, 'Movie', 'mpaRating');
    BuiltValueNullFieldError.checkNotNull(backgroundImage, 'Movie', 'backgroundImage');
    BuiltValueNullFieldError.checkNotNull(backgroundImageOriginal, 'Movie', 'backgroundImageOriginal');
    BuiltValueNullFieldError.checkNotNull(smallCoverImage, 'Movie', 'smallCoverImage');
    BuiltValueNullFieldError.checkNotNull(mediumCoverImage, 'Movie', 'mediumCoverImage');
    BuiltValueNullFieldError.checkNotNull(largeCoverImage, 'Movie', 'largeCoverImage');
    BuiltValueNullFieldError.checkNotNull(state, 'Movie', 'state');
    BuiltValueNullFieldError.checkNotNull(torrents, 'Movie', 'torrents');
    BuiltValueNullFieldError.checkNotNull(dateUploaded, 'Movie', 'dateUploaded');
    BuiltValueNullFieldError.checkNotNull(dateUploadedUnix, 'Movie', 'dateUploadedUnix');
  }

  @override
  Movie rebuild(void Function(MovieBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  MovieBuilder toBuilder() => new MovieBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Movie &&
        id == other.id &&
        url == other.url &&
        imdbCode == other.imdbCode &&
        title == other.title &&
        titleEnglish == other.titleEnglish &&
        titleLong == other.titleLong &&
        slug == other.slug &&
        year == other.year &&
        rating == other.rating &&
        runtime == other.runtime &&
        genres == other.genres &&
        summary == other.summary &&
        descriptionFull == other.descriptionFull &&
        synopsis == other.synopsis &&
        ytTrailerCode == other.ytTrailerCode &&
        language == other.language &&
        mpaRating == other.mpaRating &&
        backgroundImage == other.backgroundImage &&
        backgroundImageOriginal == other.backgroundImageOriginal &&
        smallCoverImage == other.smallCoverImage &&
        mediumCoverImage == other.mediumCoverImage &&
        largeCoverImage == other.largeCoverImage &&
        state == other.state &&
        torrents == other.torrents &&
        dateUploaded == other.dateUploaded &&
        dateUploadedUnix == other.dateUploadedUnix;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                $jc(
                                                                                    $jc(
                                                                                        $jc(
                                                                                            $jc(
                                                                                                $jc(
                                                                                                    $jc(
                                                                                                        $jc(0,
                                                                                                            id.hashCode),
                                                                                                        url.hashCode),
                                                                                                    imdbCode.hashCode),
                                                                                                title.hashCode),
                                                                                            titleEnglish.hashCode),
                                                                                        titleLong.hashCode),
                                                                                    slug.hashCode),
                                                                                year.hashCode),
                                                                            rating.hashCode),
                                                                        runtime.hashCode),
                                                                    genres.hashCode),
                                                                summary.hashCode),
                                                            descriptionFull.hashCode),
                                                        synopsis.hashCode),
                                                    ytTrailerCode.hashCode),
                                                language.hashCode),
                                            mpaRating.hashCode),
                                        backgroundImage.hashCode),
                                    backgroundImageOriginal.hashCode),
                                smallCoverImage.hashCode),
                            mediumCoverImage.hashCode),
                        largeCoverImage.hashCode),
                    state.hashCode),
                torrents.hashCode),
            dateUploaded.hashCode),
        dateUploadedUnix.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Movie')
          ..add('id', id)
          ..add('url', url)
          ..add('imdbCode', imdbCode)
          ..add('title', title)
          ..add('titleEnglish', titleEnglish)
          ..add('titleLong', titleLong)
          ..add('slug', slug)
          ..add('year', year)
          ..add('rating', rating)
          ..add('runtime', runtime)
          ..add('genres', genres)
          ..add('summary', summary)
          ..add('descriptionFull', descriptionFull)
          ..add('synopsis', synopsis)
          ..add('ytTrailerCode', ytTrailerCode)
          ..add('language', language)
          ..add('mpaRating', mpaRating)
          ..add('backgroundImage', backgroundImage)
          ..add('backgroundImageOriginal', backgroundImageOriginal)
          ..add('smallCoverImage', smallCoverImage)
          ..add('mediumCoverImage', mediumCoverImage)
          ..add('largeCoverImage', largeCoverImage)
          ..add('state', state)
          ..add('torrents', torrents)
          ..add('dateUploaded', dateUploaded)
          ..add('dateUploadedUnix', dateUploadedUnix))
        .toString();
  }
}

class MovieBuilder implements Builder<Movie, MovieBuilder> {
  _$Movie? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _imdbCode;
  String? get imdbCode => _$this._imdbCode;
  set imdbCode(String? imdbCode) => _$this._imdbCode = imdbCode;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _titleEnglish;
  String? get titleEnglish => _$this._titleEnglish;
  set titleEnglish(String? titleEnglish) => _$this._titleEnglish = titleEnglish;

  String? _titleLong;
  String? get titleLong => _$this._titleLong;
  set titleLong(String? titleLong) => _$this._titleLong = titleLong;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  num? _rating;
  num? get rating => _$this._rating;
  set rating(num? rating) => _$this._rating = rating;

  int? _runtime;
  int? get runtime => _$this._runtime;
  set runtime(int? runtime) => _$this._runtime = runtime;

  ListBuilder<String>? _genres;
  ListBuilder<String> get genres => _$this._genres ??= new ListBuilder<String>();
  set genres(ListBuilder<String>? genres) => _$this._genres = genres;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  String? _descriptionFull;
  String? get descriptionFull => _$this._descriptionFull;
  set descriptionFull(String? descriptionFull) => _$this._descriptionFull = descriptionFull;

  String? _synopsis;
  String? get synopsis => _$this._synopsis;
  set synopsis(String? synopsis) => _$this._synopsis = synopsis;

  String? _ytTrailerCode;
  String? get ytTrailerCode => _$this._ytTrailerCode;
  set ytTrailerCode(String? ytTrailerCode) => _$this._ytTrailerCode = ytTrailerCode;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _mpaRating;
  String? get mpaRating => _$this._mpaRating;
  set mpaRating(String? mpaRating) => _$this._mpaRating = mpaRating;

  String? _backgroundImage;
  String? get backgroundImage => _$this._backgroundImage;
  set backgroundImage(String? backgroundImage) => _$this._backgroundImage = backgroundImage;

  String? _backgroundImageOriginal;
  String? get backgroundImageOriginal => _$this._backgroundImageOriginal;
  set backgroundImageOriginal(String? backgroundImageOriginal) =>
      _$this._backgroundImageOriginal = backgroundImageOriginal;

  String? _smallCoverImage;
  String? get smallCoverImage => _$this._smallCoverImage;
  set smallCoverImage(String? smallCoverImage) => _$this._smallCoverImage = smallCoverImage;

  String? _mediumCoverImage;
  String? get mediumCoverImage => _$this._mediumCoverImage;
  set mediumCoverImage(String? mediumCoverImage) => _$this._mediumCoverImage = mediumCoverImage;

  String? _largeCoverImage;
  String? get largeCoverImage => _$this._largeCoverImage;
  set largeCoverImage(String? largeCoverImage) => _$this._largeCoverImage = largeCoverImage;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  ListBuilder<Torrent>? _torrents;
  ListBuilder<Torrent> get torrents => _$this._torrents ??= new ListBuilder<Torrent>();
  set torrents(ListBuilder<Torrent>? torrents) => _$this._torrents = torrents;

  String? _dateUploaded;
  String? get dateUploaded => _$this._dateUploaded;
  set dateUploaded(String? dateUploaded) => _$this._dateUploaded = dateUploaded;

  int? _dateUploadedUnix;
  int? get dateUploadedUnix => _$this._dateUploadedUnix;
  set dateUploadedUnix(int? dateUploadedUnix) => _$this._dateUploadedUnix = dateUploadedUnix;

  MovieBuilder();

  MovieBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _url = $v.url;
      _imdbCode = $v.imdbCode;
      _title = $v.title;
      _titleEnglish = $v.titleEnglish;
      _titleLong = $v.titleLong;
      _slug = $v.slug;
      _year = $v.year;
      _rating = $v.rating;
      _runtime = $v.runtime;
      _genres = $v.genres.toBuilder();
      _summary = $v.summary;
      _descriptionFull = $v.descriptionFull;
      _synopsis = $v.synopsis;
      _ytTrailerCode = $v.ytTrailerCode;
      _language = $v.language;
      _mpaRating = $v.mpaRating;
      _backgroundImage = $v.backgroundImage;
      _backgroundImageOriginal = $v.backgroundImageOriginal;
      _smallCoverImage = $v.smallCoverImage;
      _mediumCoverImage = $v.mediumCoverImage;
      _largeCoverImage = $v.largeCoverImage;
      _state = $v.state;
      _torrents = $v.torrents.toBuilder();
      _dateUploaded = $v.dateUploaded;
      _dateUploadedUnix = $v.dateUploadedUnix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Movie other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Movie;
  }

  @override
  void update(void Function(MovieBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Movie build() {
    _$Movie _$result;
    try {
      _$result = _$v ??
          new _$Movie._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Movie', 'id'),
              url: BuiltValueNullFieldError.checkNotNull(url, 'Movie', 'url'),
              imdbCode: BuiltValueNullFieldError.checkNotNull(imdbCode, 'Movie', 'imdbCode'),
              title: BuiltValueNullFieldError.checkNotNull(title, 'Movie', 'title'),
              titleEnglish: BuiltValueNullFieldError.checkNotNull(titleEnglish, 'Movie', 'titleEnglish'),
              titleLong: BuiltValueNullFieldError.checkNotNull(titleLong, 'Movie', 'titleLong'),
              slug: BuiltValueNullFieldError.checkNotNull(slug, 'Movie', 'slug'),
              year: BuiltValueNullFieldError.checkNotNull(year, 'Movie', 'year'),
              rating: BuiltValueNullFieldError.checkNotNull(rating, 'Movie', 'rating'),
              runtime: BuiltValueNullFieldError.checkNotNull(runtime, 'Movie', 'runtime'),
              genres: genres.build(),
              summary: BuiltValueNullFieldError.checkNotNull(summary, 'Movie', 'summary'),
              descriptionFull: BuiltValueNullFieldError.checkNotNull(descriptionFull, 'Movie', 'descriptionFull'),
              synopsis: BuiltValueNullFieldError.checkNotNull(synopsis, 'Movie', 'synopsis'),
              ytTrailerCode: BuiltValueNullFieldError.checkNotNull(ytTrailerCode, 'Movie', 'ytTrailerCode'),
              language: BuiltValueNullFieldError.checkNotNull(language, 'Movie', 'language'),
              mpaRating: BuiltValueNullFieldError.checkNotNull(mpaRating, 'Movie', 'mpaRating'),
              backgroundImage: BuiltValueNullFieldError.checkNotNull(backgroundImage, 'Movie', 'backgroundImage'),
              backgroundImageOriginal:
                  BuiltValueNullFieldError.checkNotNull(backgroundImageOriginal, 'Movie', 'backgroundImageOriginal'),
              smallCoverImage: BuiltValueNullFieldError.checkNotNull(smallCoverImage, 'Movie', 'smallCoverImage'),
              mediumCoverImage: BuiltValueNullFieldError.checkNotNull(mediumCoverImage, 'Movie', 'mediumCoverImage'),
              largeCoverImage: BuiltValueNullFieldError.checkNotNull(largeCoverImage, 'Movie', 'largeCoverImage'),
              state: BuiltValueNullFieldError.checkNotNull(state, 'Movie', 'state'),
              torrents: torrents.build(),
              dateUploaded: BuiltValueNullFieldError.checkNotNull(dateUploaded, 'Movie', 'dateUploaded'),
              dateUploadedUnix: BuiltValueNullFieldError.checkNotNull(dateUploadedUnix, 'Movie', 'dateUploadedUnix'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        genres.build();

        _$failedField = 'torrents';
        torrents.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('Movie', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Torrent extends Torrent {
  @override
  final String url;
  @override
  final String hash;
  @override
  final String quality;
  @override
  final String type;
  @override
  final int seeds;
  @override
  final int peers;
  @override
  final String size;
  @override
  final int sizeBytes;
  @override
  final String dateUploaded;
  @override
  final int dateUploadedUnix;

  factory _$Torrent([void Function(TorrentBuilder)? updates]) => (new TorrentBuilder()..update(updates)).build();

  _$Torrent._(
      {required this.url,
      required this.hash,
      required this.quality,
      required this.type,
      required this.seeds,
      required this.peers,
      required this.size,
      required this.sizeBytes,
      required this.dateUploaded,
      required this.dateUploadedUnix})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(url, 'Torrent', 'url');
    BuiltValueNullFieldError.checkNotNull(hash, 'Torrent', 'hash');
    BuiltValueNullFieldError.checkNotNull(quality, 'Torrent', 'quality');
    BuiltValueNullFieldError.checkNotNull(type, 'Torrent', 'type');
    BuiltValueNullFieldError.checkNotNull(seeds, 'Torrent', 'seeds');
    BuiltValueNullFieldError.checkNotNull(peers, 'Torrent', 'peers');
    BuiltValueNullFieldError.checkNotNull(size, 'Torrent', 'size');
    BuiltValueNullFieldError.checkNotNull(sizeBytes, 'Torrent', 'sizeBytes');
    BuiltValueNullFieldError.checkNotNull(dateUploaded, 'Torrent', 'dateUploaded');
    BuiltValueNullFieldError.checkNotNull(dateUploadedUnix, 'Torrent', 'dateUploadedUnix');
  }

  @override
  Torrent rebuild(void Function(TorrentBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  TorrentBuilder toBuilder() => new TorrentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Torrent &&
        url == other.url &&
        hash == other.hash &&
        quality == other.quality &&
        type == other.type &&
        seeds == other.seeds &&
        peers == other.peers &&
        size == other.size &&
        sizeBytes == other.sizeBytes &&
        dateUploaded == other.dateUploaded &&
        dateUploadedUnix == other.dateUploadedUnix;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc($jc($jc(0, url.hashCode), hash.hashCode), quality.hashCode), type.hashCode),
                            seeds.hashCode),
                        peers.hashCode),
                    size.hashCode),
                sizeBytes.hashCode),
            dateUploaded.hashCode),
        dateUploadedUnix.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Torrent')
          ..add('url', url)
          ..add('hash', hash)
          ..add('quality', quality)
          ..add('type', type)
          ..add('seeds', seeds)
          ..add('peers', peers)
          ..add('size', size)
          ..add('sizeBytes', sizeBytes)
          ..add('dateUploaded', dateUploaded)
          ..add('dateUploadedUnix', dateUploadedUnix))
        .toString();
  }
}

class TorrentBuilder implements Builder<Torrent, TorrentBuilder> {
  _$Torrent? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _hash;
  String? get hash => _$this._hash;
  set hash(String? hash) => _$this._hash = hash;

  String? _quality;
  String? get quality => _$this._quality;
  set quality(String? quality) => _$this._quality = quality;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _seeds;
  int? get seeds => _$this._seeds;
  set seeds(int? seeds) => _$this._seeds = seeds;

  int? _peers;
  int? get peers => _$this._peers;
  set peers(int? peers) => _$this._peers = peers;

  String? _size;
  String? get size => _$this._size;
  set size(String? size) => _$this._size = size;

  int? _sizeBytes;
  int? get sizeBytes => _$this._sizeBytes;
  set sizeBytes(int? sizeBytes) => _$this._sizeBytes = sizeBytes;

  String? _dateUploaded;
  String? get dateUploaded => _$this._dateUploaded;
  set dateUploaded(String? dateUploaded) => _$this._dateUploaded = dateUploaded;

  int? _dateUploadedUnix;
  int? get dateUploadedUnix => _$this._dateUploadedUnix;
  set dateUploadedUnix(int? dateUploadedUnix) => _$this._dateUploadedUnix = dateUploadedUnix;

  TorrentBuilder();

  TorrentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _hash = $v.hash;
      _quality = $v.quality;
      _type = $v.type;
      _seeds = $v.seeds;
      _peers = $v.peers;
      _size = $v.size;
      _sizeBytes = $v.sizeBytes;
      _dateUploaded = $v.dateUploaded;
      _dateUploadedUnix = $v.dateUploadedUnix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Torrent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Torrent;
  }

  @override
  void update(void Function(TorrentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Torrent build() {
    final _$result = _$v ??
        new _$Torrent._(
            url: BuiltValueNullFieldError.checkNotNull(url, 'Torrent', 'url'),
            hash: BuiltValueNullFieldError.checkNotNull(hash, 'Torrent', 'hash'),
            quality: BuiltValueNullFieldError.checkNotNull(quality, 'Torrent', 'quality'),
            type: BuiltValueNullFieldError.checkNotNull(type, 'Torrent', 'type'),
            seeds: BuiltValueNullFieldError.checkNotNull(seeds, 'Torrent', 'seeds'),
            peers: BuiltValueNullFieldError.checkNotNull(peers, 'Torrent', 'peers'),
            size: BuiltValueNullFieldError.checkNotNull(size, 'Torrent', 'size'),
            sizeBytes: BuiltValueNullFieldError.checkNotNull(sizeBytes, 'Torrent', 'sizeBytes'),
            dateUploaded: BuiltValueNullFieldError.checkNotNull(dateUploaded, 'Torrent', 'dateUploaded'),
            dateUploadedUnix: BuiltValueNullFieldError.checkNotNull(dateUploadedUnix, 'Torrent', 'dateUploadedUnix'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
