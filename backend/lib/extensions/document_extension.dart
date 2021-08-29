import 'package:backend/utils/document_utils.dart';
import 'package:googleapis/firestore/v1.dart';

extension DocumentExtension on Document {
  String toLoggableJson() => DocumentUtil.jsonEncoder.convert(toJson());
}
