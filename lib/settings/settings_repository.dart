import '../database/boxes.dart';

class SettingsRepository {
  final GenericBox box;
  const SettingsRepository(this.box);

  Future<void> remove(String key) => box.remove(key);
}
