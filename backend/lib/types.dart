typedef JsonMap = Map<String, Object?>;
typedef JsonList = List<Object?>;

abstract class ReduxModel {
  JsonMap toJson();
}
