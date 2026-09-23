import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/core_providers.dart';
import '../../settings_drawer/double_line_item.dart';
import '../../widgets/sheet_util.dart';
import '../setting_item.dart';
import 'dotk_settings_providers.dart';
import 'dotk_settings_sheet.dart';

class DotkSettingsUrlEntry extends ConsumerWidget {
  const DotkSettingsUrlEntry({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dotkEnabled = ref.watch(dotkEnabledProvider);
    final dotkApiUrl = ref.watch(dotkApiUrlProvider);

    void changeApiUrl() {
      final theme = ref.read(themeProvider);
      Sheets.showAppHeightEightSheet(
        context: context,
        theme: theme,
        widget: const DotkSettingsSheet(),
      );
    }

    final schemeIndex = dotkApiUrl.indexOf('://');
    final displayUrl = schemeIndex != -1
        ? dotkApiUrl.substring(schemeIndex + 3)
        : dotkApiUrl;

    return DoubleLineItem(
      heading: '.k names API',
      defaultMethod: StringSelectionItem(displayUrl),
      icon: Icons.api,
      onPressed: changeApiUrl,
      disabled: !dotkEnabled,
    );
  }
}
