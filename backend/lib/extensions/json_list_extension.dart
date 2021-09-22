import 'package:backend/extensions/json_map_extension.dart';
import 'package:backend/utils/type_utils.dart';
import 'package:googleapis/firestore/v1.dart';

extension JsonListExtension on JsonList {
  static const _collectionName =
      'projects/news-curation-project/databases/(default)/documents/reddit-posts/';
  List<Document> toRedditPostDocs() {
    var docs = <Document>[];
    for (var json in this) {
      var postDataMap = (json as JsonMap)['data'] as JsonMap;
      docs.add(Document(
          name: _collectionName + (postDataMap['id'] as String),
          fields: postDataMap.toFields()));
    }

    return docs;
  }
}
