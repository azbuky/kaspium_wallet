import 'package:hive/hive.dart';

Map<String, dynamic> _toJson(dynamic value) => value.toJson();

class JsonTypeAdapter<T> extends TypeAdapter<T> {
  final int typeId;
  final T Function(Map<String, dynamic>) fromJson;
  final Map<String, dynamic> Function(T) toJson;

  JsonTypeAdapter({
    required this.typeId,
    required this.fromJson,
    this.toJson = _toJson,
  });

  @override
  T read(BinaryReader reader) {
    final json = reader.readMap().cast<String, dynamic>();
    return fromJson(json);
  }

  @override
  void write(BinaryWriter writer, T obj) {
    writer.writeMap(toJson(obj));
  }
}
