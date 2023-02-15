import 'package:hive/hive.dart';

typedef TypeFactory<T> = T Function(Map<String, dynamic>);

Map<String, dynamic> _toJson(dynamic value) => value.toJson();

class IndexedTypedBox<T> {
  final Box<T> box;
  const IndexedTypedBox(this.box);

  T getAt(int index) {
    final value = box.getAt(index);
    if (value == null) {
      throw Exception('Null value for index $index');
    }
    return value;
  }

  T? tryGetAt(int index) => box.getAt(index);

  Iterable<T> getAll() => box.values;

  Future<int> add(T value) => box.add(value);

  Future<Iterable<int>> addAll(Iterable<T> values) => box.addAll(values);

  Future<int> clear() => box.clear();

  Future<void> close() => box.close();
}

class TypedBox<T> {
  final Box<T> box;
  const TypedBox(this.box);

  T get(String key, {T? defaultValue}) {
    final value = box.get(key) ?? defaultValue;
    if (value == null) {
      throw Exception('Null value for key $key');
    }
    return value;
  }

  T? tryGet(String key) => box.get(key);

  Map<String, T> getAll() => box.toMap().cast<String, T>();

  Future<void> set(String key, T value) => box.put(key, value);

  Future<void> setAll(Map<String, T> entries) => box.putAll(entries);

  Future<void> remove(String key) => box.delete(key);

  Future<int> clear() => box.clear();

  Future<void> close() => box.close();
}

class LazyTypedBox<T> {
  final LazyBox<T> box;
  const LazyTypedBox(this.box);

  Future<T> get(String key) async {
    final value = await tryGet(key);
    if (value != null) {
      return value;
    }
    throw Exception('Null value for key $key');
  }

  Future<T?> tryGet(String key) => box.get(key);

  Future<void> set(String key, T value) => box.put(key, value);

  Future<void> setAll(Map<String, T> entries) => box.putAll(entries);

  Future<void> remove(String key) => box.delete(key);

  Future<int> clear() => box.clear();

  Future<void> close() => box.close();
}

class GenericBox {
  final Box box;
  const GenericBox(this.box);

  T convert<T>(dynamic value, {TypeFactory<T>? typeFactory}) {
    if (value is T) return value;
    if (typeFactory == null) {
      throw Exception('Missing type factory for $T');
    }
    if (!(value is Map)) {
      throw Exception('Value is not a Map');
    }
    return typeFactory(value.cast<String, dynamic>());
  }

  T get<T>(String key, {TypeFactory<T>? typeFactory}) {
    final value = tryGet<T>(key, typeFactory: typeFactory);
    if (value == null) {
      throw Exception('Null value for key $key');
    }
    return value;
  }

  T? tryGet<T>(String key, {TypeFactory<T>? typeFactory}) {
    final value = box.get(key);
    if (value is T) return value;
    if (value != null) {
      return convert(value, typeFactory: typeFactory);
    }
    return null;
  }

  List<T> getList<T>(String key, {TypeFactory<T>? typeFactory}) {
    final value = box.get(key);
    if (value is List) {
      if (typeFactory != null) {
        return value
            .map((e) => typeFactory(e.cast<String, dynamic>()))
            .toList();
      }
      return value.cast<T>();
    }
    return [];
  }

  Future<void> setList<T>(
    String key,
    List<T> list, {
    dynamic convert<R>(R value)?,
  }) async {
    if (convert == null) {
      return box.put(key, list);
    }

    final value = list.map((e) => convert<T>(e)).toList();
    return box.put(key, value);
  }

  Map<String, T> getAll<T>({
    TypeFactory<T>? typeFactory,
    bool Function(String key)? where,
  }) {
    final map = box.toMap().cast<String, dynamic>();
    if (where != null) {
      map.removeWhere((key, value) => !where(key));
    }
    return map.map(
      (key, value) => MapEntry(
        key,
        value is T ? value : convert<T>(value, typeFactory: typeFactory),
      ),
    );
  }

  Future<void> set<T>(String key, T value) {
    if (value is Map || value == null) {
      return box.put(key, value);
    }
    final json = _toJson(value);
    return box.put(key, json);
  }

  Future<void> setAll<T>(Map<String, dynamic> map) =>
      box.putAll(map.map((key, value) => MapEntry(key, _toJson(value))));

  Future<void> remove(String key) => box.delete(key);

  Future<int> clear() => box.clear();

  Future<void> close() => box.close();
}

class LazyGenericBox {
  final LazyBox box;
  const LazyGenericBox(this.box);

  Future<T> get<T>(String key) async {
    return (await box.get(key))!;
  }

  Future<T?> tryGet<T>(String key) async {
    try {
      return get(key);
    } catch (_) {
      return null;
    }
  }

  Future<void> set<T>(String key, T value) {
    return box.put(key, value);
  }

  Future<void> remove(String key) => box.delete(key);

  Future<int> clear() => box.clear();

  Future<void> close() => box.close();
}
