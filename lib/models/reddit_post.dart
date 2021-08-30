import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_curation/models/reddit_media.dart';
import 'package:news_curation/utils/type_utils.dart';

part 'reddit_post.freezed.dart';
part 'reddit_post.g.dart';

@freezed
class RedditPost with _$RedditPost {
  factory RedditPost({
    /// A unique id for the post
    required String id,

    /// The kind of reddit thing
    required String kind,

    ///
    required double created,
    @JsonKey(name: 'created_utc') required double createdUTC,

    ///
    required String author,

    /// the message itself
    required String selftext,

    /// the message itself with HTML formatting
    @JsonKey(name: 'selftext_html') required String selftextHTML,

    /// In a media post, url links to the media
    String? url,

    /// With the base url (https://www.reddit.com), links to the post
    required String permalink,
    String? thumbnail,

    ///
    int? likes,

    ///
    required String title,

    ///
    @JsonKey(name: 'num_comments') num? numComments,

    ///
    RedditMedia? media,
  }) = _RedditPost;

  factory RedditPost.fromJson(JsonMap json) => _$RedditPostFromJson(json);
}
