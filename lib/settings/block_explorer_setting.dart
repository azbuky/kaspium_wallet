import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'block_explorers.dart';
import 'setting_item.dart';

class BlockExplorerSetting extends SettingSelectionItem {
  final BlockExplorer explorer;

  const BlockExplorerSetting(this.explorer);

  @override
  String getDisplayName(WidgetRef ref) {
    return explorer.name;
  }
}
