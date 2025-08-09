import 'package:hive/hive.dart';

typedef TypeFactory<T> = T Function(Map<String, dynamic>);

dynamic _toJson<T>(T value) {
  if (value == null ||
      value is Map ||
      value is String ||
      value is bool ||
      value is int ||
      value is double) {
    return value;
  }
  return (value as dynamic).toJson();
}

T _convert<T>(dynamic value, {TypeFactory<T>? typeFactory}) {
  if (value is T) return value;
  if (typeFactory == null) {
    throw Exception('Missing type factory for $T');
  }
  if (!(value is Map)) {
    throw Exception('Value is not a Map');
  }
  return typeFactory(value.cast<String, dynamic>());
}

class GenericBox {
  final Box box;
  const GenericBox(this.box);

  T get<T>(String key, {TypeFactory<T>? typeFactory}) {
    final value = tryGet<T>(key, typeFactory: typeFactory);
    if (value == null) {
      throw Exception('Null value for key $key');
    }
    return value;
  }

  T? tryGet<T>(String key, {TypeFactory<T>? typeFactory}) {
    final value = box.get(key);
    if (value == null) {
      return null;
    }
    return _convert(value, typeFactory: typeFactory);
  }

  List<T> getList<T>(String key, {TypeFactory<T>? typeFactory}) {
    return tryGetList(key, typeFactory: typeFactory) ?? [];
  }

  List<T>? tryGetList<T>(String key, {TypeFactory<T>? typeFactory}) {
    final value = box.get(key);
    if (value is List) {
      if (typeFactory == null) {
        return value.cast<T>();
      }
      return value.map((e) => _convert(e, typeFactory: typeFactory)).toList();
    }
    return null;
  }

  Future<void> set<T>(
    String key,
    T value, {
    dynamic Function(T value)? convert,
  }) {
    if (value == null ||
        value is Map ||
        value is String ||
        value is bool ||
        value is int ||
        value is double) {
      return box.put(key, value);
    }
    convert ??= _toJson;
    return box.put(key, convert(value));
  }

  Future<void> setList<T>(
    String key,
    List<T> list, {
    dynamic Function(T value)? convert,
  }) async {
    if (convert == null) {
      return box.put(key, list);
    }

    final value = list.map(convert).toList();
    return box.put(key, value);
  }

  Future<void> remove(String key) => box.delete(key);

  Future<int> clear() => box.clear();

  Future<void> close() => box.close();
}
