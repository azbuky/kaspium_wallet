import 'package:flutter/material.dart';

import '../setting_item.dart';
import 'node_types.dart';

class NodeSetting implements SettingSelectionItem {
  final NodeConfig config;
  NodeSetting(this.config);

  @override
  String getDisplayName(BuildContext context) => config.name;
}
