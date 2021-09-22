import 'package:backend/utils/type_utils.dart';
import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

import '../extensions/json_list_extension.dart';

/// console: https://console.firebase.google.com/project/news-curation-project/firestore/data
// we will hit this endpoint every (say) hour, with a cron job: https://cloud.google.com/scheduler
class FirestoreService {
  FirestoreService(AutoRefreshingAuthClient client, {FirestoreApi? api}) {
    const backendDefine = String.fromEnvironment('BACKEND');
    // store the passed api or create one
    _api = api ??
        // connect to the local emulator if relevant dart define is present
        ((backendDefine == 'EMULATOR')
            ? FirestoreApi(client, rootUrl: 'http://localhost:8081/')
            : FirestoreApi(client));
    _docs = _api.projects.databases.documents;
  }

  late final FirestoreApi _api;
  late final ProjectsDatabasesDocumentsResource _docs;
  static const _redditPostsCollectionName = 'reddit-posts';
  static const _databaseName =
      'projects/news-curation-project/databases/(default)'; //

  Future<Document> _saveRedditPost(JsonMap json) async => _docs.createDocument(
        json.toDocument(),
        _databaseName + '/documents',
        _redditPostsCollectionName,
      );

  Future<void> mergeRedditPosts(List<dynamic> jsonList) async {
    var writesList = <Write>[];
    for (var doc in jsonList.toRedditPostDocs()) {
      writesList.add(Write(update: doc));
    }

    CommitResponse response =
        await _docs.commit(CommitRequest(writes: writesList), _databaseName);
  }
}
