import 'dart:convert';

import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

class FirestoreService {
  FirestoreService(AutoRefreshingAuthClient client, {FirestoreApi? api}) {
    _api = api ?? FirestoreApi(client);
  }

  late final FirestoreApi _api;
  final _encoder = JsonEncoder.withIndent(' ');

  saveDocument() async {
    final requestDocument = Document()
      ..fields = {'key': Value()..integerValue = '5'};

    final responseDocument =
        await _api.projects.databases.documents.createDocument(
      requestDocument,
      'projects/news-curation-project/databases/(default)/documents',
      'testing',
    );

    print(_encoder.convert(responseDocument.toJson()));
  }
}
