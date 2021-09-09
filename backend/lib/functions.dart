import 'package:backend/services/firestore_service.dart';
import 'package:backend/services/http_service.dart';
import 'package:functions_framework/functions_framework.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:shelf/shelf.dart';

@CloudFunction()
Future<Response> function(Request request) async {
  // try {

  // } catch (error) {
  //   print(error);
  //   return Response.internalServerError(body: error);
  // }

  // Create a client that will authenticate as the default service account.
  final googleapisClient =
      await clientViaApplicationDefaultCredentials(scopes: []);

  final firestoreService = FirestoreService(googleapisClient);
  final httpService = HttpService();

  final latestRedditPosts = await httpService.retrieveRedditPosts();

  await firestoreService.mergeRedditPosts(latestRedditPosts);

  return Response.ok('Saved x new posts');
}
