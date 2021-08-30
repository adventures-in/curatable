// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reddit_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RedditPost _$RedditPostFromJson(Map<String, dynamic> json) {
  return _RedditPost.fromJson(json);
}

/// @nodoc
class _$RedditPostTearOff {
  const _$RedditPostTearOff();

  _RedditPost call(
      {required String id,
      required String kind,
      required double created,
      @JsonKey(name: 'created_utc') required double createdUTC,
      required String author,
      required String selftext,
      @JsonKey(name: 'selftext_html') required String selftextHTML,
      String? url,
      required String permalink,
      String? thumbnail,
      int? likes,
      required String title,
      @JsonKey(name: 'num_comments') num? numComments,
      RedditMedia? media}) {
    return _RedditPost(
      id: id,
      kind: kind,
      created: created,
      createdUTC: createdUTC,
      author: author,
      selftext: selftext,
      selftextHTML: selftextHTML,
      url: url,
      permalink: permalink,
      thumbnail: thumbnail,
      likes: likes,
      title: title,
      numComments: numComments,
      media: media,
    );
  }

  RedditPost fromJson(Map<String, Object> json) {
    return RedditPost.fromJson(json);
  }
}

/// @nodoc
const $RedditPost = _$RedditPostTearOff();

/// @nodoc
mixin _$RedditPost {
  /// A unique id for the post
  String get id => throw _privateConstructorUsedError;

  /// The kind of reddit thing
  String get kind => throw _privateConstructorUsedError;

  ///
  double get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_utc')
  double get createdUTC => throw _privateConstructorUsedError;

  ///
  String get author => throw _privateConstructorUsedError;

  /// the message itself
  String get selftext => throw _privateConstructorUsedError;

  /// the message itself with HTML formatting
  @JsonKey(name: 'selftext_html')
  String get selftextHTML => throw _privateConstructorUsedError;

  /// In a media post, url links to the media
  String? get url => throw _privateConstructorUsedError;

  /// With the base url (https://www.reddit.com), links to the post
  String get permalink => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;

  ///
  int? get likes => throw _privateConstructorUsedError;

  ///
  String get title => throw _privateConstructorUsedError;

  ///
  @JsonKey(name: 'num_comments')
  num? get numComments => throw _privateConstructorUsedError;

  ///
  RedditMedia? get media => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RedditPostCopyWith<RedditPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedditPostCopyWith<$Res> {
  factory $RedditPostCopyWith(
          RedditPost value, $Res Function(RedditPost) then) =
      _$RedditPostCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String kind,
      double created,
      @JsonKey(name: 'created_utc') double createdUTC,
      String author,
      String selftext,
      @JsonKey(name: 'selftext_html') String selftextHTML,
      String? url,
      String permalink,
      String? thumbnail,
      int? likes,
      String title,
      @JsonKey(name: 'num_comments') num? numComments,
      RedditMedia? media});

  $RedditMediaCopyWith<$Res>? get media;
}

/// @nodoc
class _$RedditPostCopyWithImpl<$Res> implements $RedditPostCopyWith<$Res> {
  _$RedditPostCopyWithImpl(this._value, this._then);

  final RedditPost _value;
  // ignore: unused_field
  final $Res Function(RedditPost) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? kind = freezed,
    Object? created = freezed,
    Object? createdUTC = freezed,
    Object? author = freezed,
    Object? selftext = freezed,
    Object? selftextHTML = freezed,
    Object? url = freezed,
    Object? permalink = freezed,
    Object? thumbnail = freezed,
    Object? likes = freezed,
    Object? title = freezed,
    Object? numComments = freezed,
    Object? media = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as double,
      createdUTC: createdUTC == freezed
          ? _value.createdUTC
          : createdUTC // ignore: cast_nullable_to_non_nullable
              as double,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      selftext: selftext == freezed
          ? _value.selftext
          : selftext // ignore: cast_nullable_to_non_nullable
              as String,
      selftextHTML: selftextHTML == freezed
          ? _value.selftextHTML
          : selftextHTML // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      permalink: permalink == freezed
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      numComments: numComments == freezed
          ? _value.numComments
          : numComments // ignore: cast_nullable_to_non_nullable
              as num?,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as RedditMedia?,
    ));
  }

  @override
  $RedditMediaCopyWith<$Res>? get media {
    if (_value.media == null) {
      return null;
    }

    return $RedditMediaCopyWith<$Res>(_value.media!, (value) {
      return _then(_value.copyWith(media: value));
    });
  }
}

/// @nodoc
abstract class _$RedditPostCopyWith<$Res> implements $RedditPostCopyWith<$Res> {
  factory _$RedditPostCopyWith(
          _RedditPost value, $Res Function(_RedditPost) then) =
      __$RedditPostCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String kind,
      double created,
      @JsonKey(name: 'created_utc') double createdUTC,
      String author,
      String selftext,
      @JsonKey(name: 'selftext_html') String selftextHTML,
      String? url,
      String permalink,
      String? thumbnail,
      int? likes,
      String title,
      @JsonKey(name: 'num_comments') num? numComments,
      RedditMedia? media});

  @override
  $RedditMediaCopyWith<$Res>? get media;
}

/// @nodoc
class __$RedditPostCopyWithImpl<$Res> extends _$RedditPostCopyWithImpl<$Res>
    implements _$RedditPostCopyWith<$Res> {
  __$RedditPostCopyWithImpl(
      _RedditPost _value, $Res Function(_RedditPost) _then)
      : super(_value, (v) => _then(v as _RedditPost));

  @override
  _RedditPost get _value => super._value as _RedditPost;

  @override
  $Res call({
    Object? id = freezed,
    Object? kind = freezed,
    Object? created = freezed,
    Object? createdUTC = freezed,
    Object? author = freezed,
    Object? selftext = freezed,
    Object? selftextHTML = freezed,
    Object? url = freezed,
    Object? permalink = freezed,
    Object? thumbnail = freezed,
    Object? likes = freezed,
    Object? title = freezed,
    Object? numComments = freezed,
    Object? media = freezed,
  }) {
    return _then(_RedditPost(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as double,
      createdUTC: createdUTC == freezed
          ? _value.createdUTC
          : createdUTC // ignore: cast_nullable_to_non_nullable
              as double,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      selftext: selftext == freezed
          ? _value.selftext
          : selftext // ignore: cast_nullable_to_non_nullable
              as String,
      selftextHTML: selftextHTML == freezed
          ? _value.selftextHTML
          : selftextHTML // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      permalink: permalink == freezed
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      numComments: numComments == freezed
          ? _value.numComments
          : numComments // ignore: cast_nullable_to_non_nullable
              as num?,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as RedditMedia?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RedditPost implements _RedditPost {
  _$_RedditPost(
      {required this.id,
      required this.kind,
      required this.created,
      @JsonKey(name: 'created_utc') required this.createdUTC,
      required this.author,
      required this.selftext,
      @JsonKey(name: 'selftext_html') required this.selftextHTML,
      this.url,
      required this.permalink,
      this.thumbnail,
      this.likes,
      required this.title,
      @JsonKey(name: 'num_comments') this.numComments,
      this.media});

  factory _$_RedditPost.fromJson(Map<String, dynamic> json) =>
      _$$_RedditPostFromJson(json);

  @override

  /// A unique id for the post
  final String id;
  @override

  /// The kind of reddit thing
  final String kind;
  @override

  ///
  final double created;
  @override
  @JsonKey(name: 'created_utc')
  final double createdUTC;
  @override

  ///
  final String author;
  @override

  /// the message itself
  final String selftext;
  @override

  /// the message itself with HTML formatting
  @JsonKey(name: 'selftext_html')
  final String selftextHTML;
  @override

  /// In a media post, url links to the media
  final String? url;
  @override

  /// With the base url (https://www.reddit.com), links to the post
  final String permalink;
  @override
  final String? thumbnail;
  @override

  ///
  final int? likes;
  @override

  ///
  final String title;
  @override

  ///
  @JsonKey(name: 'num_comments')
  final num? numComments;
  @override

  ///
  final RedditMedia? media;

  @override
  String toString() {
    return 'RedditPost(id: $id, kind: $kind, created: $created, createdUTC: $createdUTC, author: $author, selftext: $selftext, selftextHTML: $selftextHTML, url: $url, permalink: $permalink, thumbnail: $thumbnail, likes: $likes, title: $title, numComments: $numComments, media: $media)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RedditPost &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.createdUTC, createdUTC) ||
                const DeepCollectionEquality()
                    .equals(other.createdUTC, createdUTC)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.selftext, selftext) ||
                const DeepCollectionEquality()
                    .equals(other.selftext, selftext)) &&
            (identical(other.selftextHTML, selftextHTML) ||
                const DeepCollectionEquality()
                    .equals(other.selftextHTML, selftextHTML)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.permalink, permalink) ||
                const DeepCollectionEquality()
                    .equals(other.permalink, permalink)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.likes, likes) ||
                const DeepCollectionEquality().equals(other.likes, likes)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.numComments, numComments) ||
                const DeepCollectionEquality()
                    .equals(other.numComments, numComments)) &&
            (identical(other.media, media) ||
                const DeepCollectionEquality().equals(other.media, media)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(createdUTC) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(selftext) ^
      const DeepCollectionEquality().hash(selftextHTML) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(permalink) ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(likes) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(numComments) ^
      const DeepCollectionEquality().hash(media);

  @JsonKey(ignore: true)
  @override
  _$RedditPostCopyWith<_RedditPost> get copyWith =>
      __$RedditPostCopyWithImpl<_RedditPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RedditPostToJson(this);
  }
}

abstract class _RedditPost implements RedditPost {
  factory _RedditPost(
      {required String id,
      required String kind,
      required double created,
      @JsonKey(name: 'created_utc') required double createdUTC,
      required String author,
      required String selftext,
      @JsonKey(name: 'selftext_html') required String selftextHTML,
      String? url,
      required String permalink,
      String? thumbnail,
      int? likes,
      required String title,
      @JsonKey(name: 'num_comments') num? numComments,
      RedditMedia? media}) = _$_RedditPost;

  factory _RedditPost.fromJson(Map<String, dynamic> json) =
      _$_RedditPost.fromJson;

  @override

  /// A unique id for the post
  String get id => throw _privateConstructorUsedError;
  @override

  /// The kind of reddit thing
  String get kind => throw _privateConstructorUsedError;
  @override

  ///
  double get created => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_utc')
  double get createdUTC => throw _privateConstructorUsedError;
  @override

  ///
  String get author => throw _privateConstructorUsedError;
  @override

  /// the message itself
  String get selftext => throw _privateConstructorUsedError;
  @override

  /// the message itself with HTML formatting
  @JsonKey(name: 'selftext_html')
  String get selftextHTML => throw _privateConstructorUsedError;
  @override

  /// In a media post, url links to the media
  String? get url => throw _privateConstructorUsedError;
  @override

  /// With the base url (https://www.reddit.com), links to the post
  String get permalink => throw _privateConstructorUsedError;
  @override
  String? get thumbnail => throw _privateConstructorUsedError;
  @override

  ///
  int? get likes => throw _privateConstructorUsedError;
  @override

  ///
  String get title => throw _privateConstructorUsedError;
  @override

  ///
  @JsonKey(name: 'num_comments')
  num? get numComments => throw _privateConstructorUsedError;
  @override

  ///
  RedditMedia? get media => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RedditPostCopyWith<_RedditPost> get copyWith =>
      throw _privateConstructorUsedError;
}
