import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curatable/models/reddit_post.dart';
import 'package:curatable/widgets/curatable_item_card.dart';
import 'package:flutter/material.dart';

class CuratablesView extends StatelessWidget {
  const CuratablesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<RedditPost>>(
        stream: FirebaseFirestore.instance
            .collection('reddit-posts')
            .snapshots()
            .map<List<RedditPost>>((snapshot) {
          final postsIterable = snapshot.docs.map<RedditPost>((doc) {
            final post = RedditPost.fromJson(doc.data());
            return post;
          });
          return postsIterable.toList();
        }),
        builder: (context, snapshot) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: MyHomePage(
              title: 'Flutter Demo Home Page',
              posts: snapshot.data,
            ),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage(
      {required this.title, required List<RedditPost>? posts, Key? key})
      : _posts = posts ?? const [],
        super(key: key);
  final String title;
  final List<RedditPost> _posts;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Curate the News')),
      body: RefreshIndicator(
        onRefresh: () =>
            Future.delayed(const Duration(seconds: 3), () => setState(() {})),
        child: ListView.builder(
          itemCount: widget._posts.length,
          itemBuilder: (_, index) => CuratableItemCard(
            post: widget._posts[index],
          ),
        ),
      ),
    );
  }
}
