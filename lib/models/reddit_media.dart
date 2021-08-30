import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_curation/utils/type_utils.dart';

part 'reddit_media.freezed.dart';
part 'reddit_media.g.dart';

@freezed
class RedditMedia with _$RedditMedia {
  factory RedditMedia({required String type, required JsonMap oembed}) =
      _RedditMedia;

  factory RedditMedia.fromJson(JsonMap json) => _$RedditMediaFromJson(json);
}
