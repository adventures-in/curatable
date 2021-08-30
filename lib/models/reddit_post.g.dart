// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reddit_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RedditPost _$$_RedditPostFromJson(Map<String, dynamic> json) =>
    _$_RedditPost(
      id: json['id'] as String,
      kind: json['kind'] as String,
      created: (json['created'] as num).toDouble(),
      createdUTC: (json['created_utc'] as num).toDouble(),
      author: json['author'] as String,
      selftext: json['selftext'] as String,
      selftextHTML: json['selftext_html'] as String,
      url: json['url'] as String?,
      permalink: json['permalink'] as String,
      thumbnail: json['thumbnail'] as String?,
      likes: json['likes'] as int?,
      title: json['title'] as String,
      numComments: json['num_comments'] as num?,
      media: json['media'] == null
          ? null
          : RedditMedia.fromJson(json['media'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RedditPostToJson(_$_RedditPost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kind': instance.kind,
      'created': instance.created,
      'created_utc': instance.createdUTC,
      'author': instance.author,
      'selftext': instance.selftext,
      'selftext_html': instance.selftextHTML,
      'url': instance.url,
      'permalink': instance.permalink,
      'thumbnail': instance.thumbnail,
      'likes': instance.likes,
      'title': instance.title,
      'num_comments': instance.numComments,
      'media': instance.media,
    };
