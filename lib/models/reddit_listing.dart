import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:curatable/models/reddit_post.dart';
import 'package:curatable/utils/type_utils.dart';

part 'reddit_listing.freezed.dart';
part 'reddit_listing.g.dart';

/// Documentation adapted from https://www.reddit.com/dev/api#listings
/// [after / before]
///   - only one should be specified. these indicate the fullname of an item in
///     the listing to use as the anchor point of the slice.
/// [modhash]
///   - a token that the reddit API requires to help prevent CSRF. Modhashes
///     can be obtained via the /api/me.json call or in response data of
///     listing endpoints.
///
/// --fullnames--
/// A fullname is a combination of a thing's type (e.g. Link) and its unique ID
/// which forms a compact encoding of a globally unique ID on reddit.
///
/// Fullnames start with the type prefix for the object's type, followed by the
/// thing's unique ID in base 36. For example, t3_15bfi0.
///
@freezed
class RedditListing with _$RedditListing {
  factory RedditListing({
    String? after,
    String? before,
    required int dist,
    required String modhash,
    required List<RedditPost> children,
  }) = _RedditListing;

  factory RedditListing.fromJson(JsonMap json) => _$RedditListingFromJson(json);
}
