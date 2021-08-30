import 'dart:convert';

import 'package:backend/services/firestore_service.dart';
import 'package:backend/utils/type_utils.dart';
import 'package:functions_framework/functions_framework.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart' as http;
import 'package:shelf/shelf.dart';

@CloudFunction()
Future<Response> function(Request request) async {
  // Create a client that will authenticate as the default service account.
  final googleapisClient =
      await clientViaApplicationDefaultCredentials(scopes: []);

  final service = FirestoreService(googleapisClient);

  var client = http.Client();
  final queryParameters = {'sort': 'new', 'limit': '100', 'raw_json': '1'};
  final uri =
      Uri.https('www.reddit.com', '/r/FlutterDev/.json', queryParameters);

  try {
    final response =
        await http.get(uri, headers: {'content-type': 'application/json'});

    // Decode the response to a JsonMap and save each reddit post to a firestore document
    final json = JsonDecoder().convert(response.body);
    final jsonList = json['data']['children'] as List;
    for (var message in jsonList) {
      service.saveDocument(message['data'] as JsonMap);
    }
  } finally {
    client.close();
  }

  return Response.ok('Saved x new posts');
}
