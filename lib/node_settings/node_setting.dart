import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../settings/setting_item.dart';
import 'node_types.dart';

class NodeSetting implements SettingSelectionItem {
  final NodeConfig config;
  NodeSetting(this.config);

  @override
  String getDisplayName(WidgetRef ref) {
    return this.config.name;
  }
}
