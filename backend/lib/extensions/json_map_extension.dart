import 'package:backend/utils/type_utils.dart';
import 'package:googleapis/firestore/v1.dart';

extension JsonMapExtension on JsonMap {
  Map<String, Value> toFields() =>
      map((key, value) => MapEntry(key, TypeUtil.encode(value)));
}
