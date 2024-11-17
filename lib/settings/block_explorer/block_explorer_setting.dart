import 'package:flutter/material.dart';

import '../setting_item.dart';
import 'block_explorers.dart';

class BlockExplorerSetting extends SettingSelectionItem {
  final BlockExplorer explorer;

  const BlockExplorerSetting(this.explorer);

  @override
  String getDisplayName(BuildContext context) {
    return explorer.name;
  }
}
