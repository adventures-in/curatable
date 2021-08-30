import 'package:backend/utils/type_utils.dart';
import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

class FirestoreService {
  FirestoreService(AutoRefreshingAuthClient client, {FirestoreApi? api}) {
    _api = api ?? FirestoreApi(client);
  }

  late final FirestoreApi _api;

  saveDocument(JsonMap json) async {
    final requestDocument = json.toDocument();

    await _api.projects.databases.documents.createDocument(
      requestDocument,
      'projects/news-curation-project/databases/(default)/documents',
      'testing',
    );
  }
}
