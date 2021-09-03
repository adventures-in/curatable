import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:news_curation/models/reddit_post.dart';
import 'package:news_curation/widgets/news_item_card.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Set default `_initialized` and `_error` state to false
  bool _initialized = false;
  dynamic _error;

  // Define an async function to initialize FlutterFire
  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _error = e;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Show error message if initialization failed
    if (_error != null) {
      print(_error);
    }

    // Show a loader until FlutterFire is initialized
    if (!_initialized) {
      return const CircularProgressIndicator();
    }

    return StreamBuilder<List<RedditPost>>(
        stream: FirebaseFirestore.instance
            .collection('testing')
            .snapshots()
            .map<List<RedditPost>>((snapshot) {
          final data = snapshot.docs.first.data();

          final list = snapshot.docs.map<RedditPost>((doc) {
            final post = RedditPost.fromJson(doc.data());
            return post;
          }).toList();
          return list;
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
            itemBuilder: (_, index) =>
                NewsItemCard(post: widget._posts[index])),
      ),
    );
  }
}
