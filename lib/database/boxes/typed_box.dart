import 'package:hive_flutter/hive_flutter.dart';

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

  Future<void> removeAll(Iterable<String> keys) => box.deleteAll(keys);

  Future<int> clear() => box.clear();

  Future<void> close() => box.close();
}
