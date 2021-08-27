import 'dart:convert';

import 'package:functions_framework/functions_framework.dart';
import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:shelf/shelf.dart';

const _encoder = JsonEncoder.withIndent(' ');

@CloudFunction()
Future<Response> function(Request request) async {
  // Create services and a client that will authenticate as the given user.
  final serviceClient =
      await clientViaApplicationDefaultCredentials(scopes: []);
  final api = FirestoreApi(serviceClient);

  final requestDocument = Document()
    ..fields = {'key': Value()..integerValue = '5'};

  final responseDocument =
      await api.projects.databases.documents.createDocument(
    requestDocument,
    'projects/news-curation-project/databases/(default)/documents',
    'testing',
  );

  print(_encoder.convert(responseDocument.toJson()));

  return Response.ok('Saved x new posts');
}
