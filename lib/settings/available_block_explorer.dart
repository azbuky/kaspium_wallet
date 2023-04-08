import 'package:flutter/material.dart';

import 'block_explorers.dart';
import 'setting_item.dart';

class AvailableBlockExplorer extends SettingSelectionItem {
  final BlockExplorer explorer;

  const AvailableBlockExplorer(this.explorer);

  String getDisplayName(BuildContext context) {
    return explorer.name;
  }

  // For saving to shared prefs
  String getId() => explorer.name;
}
