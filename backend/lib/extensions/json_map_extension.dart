import 'package:backend/utils/type_utils.dart';
import 'package:googleapis/firestore/v1.dart';

extension JsonMapExtension on JsonMap {
  Document toDocument() {
    var document = Document()..fields = {};
    forEach((key, value) {
      document.fields![key] = TypeUtil.encode(value);
    });
    return document;
  }
}
