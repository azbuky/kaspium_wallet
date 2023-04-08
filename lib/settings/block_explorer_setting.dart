import 'package:flutter/material.dart';

import 'block_explorers.dart';
import 'setting_item.dart';

class BlockExplorerSetting extends SettingSelectionItem {
  final BlockExplorer explorer;

  const BlockExplorerSetting(this.explorer);

  @override
  String getDisplayName(BuildContext context) {
    return explorer.name;
  }
}
