import 'package:flutter/material.dart';

import '../settings/setting_item.dart';

class SelectionItem extends SettingSelectionItem {
  final String displayName;

  SelectionItem(this.displayName);

  @override
  String getDisplayName(BuildContext context) => displayName;
}
