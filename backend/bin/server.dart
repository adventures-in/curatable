import 'package:backend/services/firestore_service.dart';
import 'package:backend/services/http_service.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

// For Google Cloud Run, set _hostname to '0.0.0.0'
const _hostname = '0.0.0.0';

void main() {
  shelf_io.serve(_handler, _hostname, 8080).then((server) {
    print('Serving at ws://${server.address.host}:${server.port}');
  });
}

Future<Response> _handler(Request request) async {
  // Create a client that will authenticate as the default service account.
  final googleapisClient =
      await clientViaApplicationDefaultCredentials(scopes: []);

  final firestoreService = FirestoreService(googleapisClient);
  final httpService = HttpService();

  final latestRedditPosts = await httpService.retrieveRedditPosts();

  await firestoreService.mergeRedditPosts(latestRedditPosts);

  googleapisClient.close();

  return Response.ok('Saved ${latestRedditPosts.length} new posts');
}
