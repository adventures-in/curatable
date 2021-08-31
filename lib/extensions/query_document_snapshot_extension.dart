import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:news_curation/models/reddit_post.dart';
import 'package:news_curation/utils/type_utils.dart';

extension QueryDocumentSnapshotExtension on QueryDocumentSnapshot<JsonMap> {
  RedditPost toRedditPost() => RedditPost.fromJson(data());
}

  // final List<RedditPost> _posts = [];

  //   var postsSnapshot =
  //       await FirebaseFirestore.instance.collection('testing').get();

  //   for (var doc in postsSnapshot.docs) {
  //     _posts.add(doc.toRedditPost());
  //   }