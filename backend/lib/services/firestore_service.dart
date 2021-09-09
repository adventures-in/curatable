import 'package:backend/utils/type_utils.dart';
import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

/// console: https://console.firebase.google.com/project/news-curation-project/firestore/data
// we will hit this endpoint every (say) hour, with a cron job: https://cloud.google.com/scheduler
class FirestoreService {
  FirestoreService(AutoRefreshingAuthClient client, {FirestoreApi? api}) {
    _api = api ?? FirestoreApi(client, rootUrl: 'http://localhost:8081/');
    _docs = _api.projects.databases.documents;
  }

  late final FirestoreApi _api;
  late final ProjectsDatabasesDocumentsResource _docs;
  static const _redditPostsCollectionName = 'reddit-posts';
  static const _databaseName =
      'projects/news-curation-project/databases/(default)/documents';

  Future<Document> _saveRedditPost(JsonMap json) async => _docs.createDocument(
        json.toDocument(),
        _databaseName,
        _redditPostsCollectionName,
      );

  Future<void> mergeRedditPosts(List<dynamic> jsonList) async {
    // clear out all docs
    var response = await _docs.list(_databaseName, _redditPostsCollectionName);
    for (var doc in response.documents ?? []) {
      await _docs.delete(doc.name);
    }

    // save new docs
    for (dynamic redditPost in jsonList) {
      await _saveRedditPost(redditPost['data'] as JsonMap);
    }
  }
}
