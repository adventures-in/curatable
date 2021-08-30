// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reddit_listing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RedditListing _$$_RedditListingFromJson(Map<String, dynamic> json) =>
    _$_RedditListing(
      after: json['after'] as String?,
      before: json['before'] as String?,
      dist: json['dist'] as int,
      modhash: json['modhash'] as String,
      children: (json['children'] as List<dynamic>)
          .map((e) => RedditPost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RedditListingToJson(_$_RedditListing instance) =>
    <String, dynamic>{
      'after': instance.after,
      'before': instance.before,
      'dist': instance.dist,
      'modhash': instance.modhash,
      'children': instance.children,
    };
