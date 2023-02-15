import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'block_explorers.dart';
import 'setting_item.dart';

class AvailableBlockExplorer extends SettingSelectionItem {
  final BlockExplorer explorer;

  const AvailableBlockExplorer(this.explorer);

  String getDisplayName(WidgetRef ref) {
    return explorer.name;
  }

  // For saving to shared prefs
  String getId() => explorer.name;
}
