import 'package:curatable/models/reddit_post.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class CuratableItemCard extends StatelessWidget {
  const CuratableItemCard({
    Key? key,
    required this.post,
  }) : super(key: key);

  final RedditPost post;

  @override
  Widget build(BuildContext context) {
    Widget? trailingWidget;
    if (post.thumbnail != null &&
        (Uri.tryParse(post.thumbnail!)?.hasAbsolutePath ?? false)) {
      trailingWidget = Image.network(post.thumbnail!);
    }
    return SizedBox(
      height: 100,
      child: Card(
        child: ListTile(
          title: Link(
            uri: Uri.parse('https://www.reddit.com/r/FlutterDev/'),
            builder: (context, followLink) {
              return RichText(
                  text: TextSpan(children: [
                const TextSpan(
                  text: 'Post',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    backgroundColor: Colors.blue,
                  ),
                ),
                TextSpan(children: [
                  const TextSpan(
                    text: ' from  ',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: 'r/FlutterDev',
                    style: const TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = followLink,
                  ),
                ]),
              ]));
            },
          ),
          // const Text('Post from r/FlutterDev'),
          subtitle: Link(
            uri: Uri.parse('https://www.reddit.com/${post.permalink}'),
            builder: (context, followLink) {
              return RichText(
                maxLines: 1,
                text: TextSpan(
                    text: post.title,
                    style: const TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = followLink),
              );
            },
          ),

          trailing: trailingWidget,
        ),
      ),
    );
  }
}
