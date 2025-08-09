import 'package:hive_flutter/hive_flutter.dart';

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

  Future<void> removeAll(Iterable<String> keys) => box.deleteAll(keys);

  Future<int> clear() => box.clear();

  Future<void> close() => box.close();
}
