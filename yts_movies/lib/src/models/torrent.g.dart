// GENERATED CODE - DO NOT MODIFY BY HAND

part of torrent;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Torrent> _$torrentSerializer = new _$TorrentSerializer();

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
