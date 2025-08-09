import 'package:hive_flutter/hive_flutter.dart';

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
