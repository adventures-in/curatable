import 'dart:convert';

import 'package:functions_framework/functions_framework.dart';
import 'package:http/http.dart' as http;
import 'package:shelf/shelf.dart';

import 'types.dart';

@CloudFunction()
Future<Response> function(Request request) async {
  // Create a client that will authenticate as the default service account.
  // final client = await clientViaApplicationDefaultCredentials(scopes: []);

  // final service = FirestoreService(client);
  // service.saveDocument();

  var client = http.Client();
  final queryParameters = {'sort': 'new', 'limit': '100'};
  final uri =
      Uri.https('www.reddit.com', '/r/FlutterDev/.json', queryParameters);

  try {
    final response = await http.get(uri, headers: {
      // 'authorization': 'Token $token',
      'content-type': 'application/json',
    });

    final json = JsonDecoder().convert(response.body);
    final jsonData = json['data'] as JsonMap;
    // ['children'] as List<Map<String, Object?>>;
    //JsonList;

    for (var key in jsonData.keys) {
      print(key);
      // print((item)['kind']);
      // print((item)['data']);
    }
  } finally {
    client.close();
  }

  return Response.ok('Saved x new posts');
}
