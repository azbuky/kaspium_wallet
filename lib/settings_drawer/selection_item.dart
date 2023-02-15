import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../settings/setting_item.dart';

class SelectionItem extends SettingSelectionItem {
  final String displayName;

  SelectionItem(this.displayName);

  @override
  String getDisplayName(WidgetRef ref) => displayName;
}
