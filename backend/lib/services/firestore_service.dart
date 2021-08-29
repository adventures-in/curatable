import 'dart:convert';

import 'package:backend/types.dart';
import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

class FirestoreService {
  FirestoreService(AutoRefreshingAuthClient client, {FirestoreApi? api}) {
    _api = api ?? FirestoreApi(client);
  }

  late final FirestoreApi _api;
  final _encoder = JsonEncoder.withIndent(' ');

  saveDocument(JsonMap json) async {
    // FirestoreApi throws if there is a key called 'name'
    // json.removeWhere((key, value) => key == "name");
    json.removeWhere((key, value) => value == null);

    final requestDocument = Document.fromJson({'fields': json});

    final responseDocument =
        await _api.projects.databases.documents.createDocument(
      requestDocument,
      'projects/news-curation-project/databases/(default)/documents',
      'testing',
    );

    print(_encoder.convert(responseDocument.toJson()));
  }
}
