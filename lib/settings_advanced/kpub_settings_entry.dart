import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import '../l10n/l10n.dart';
import '../settings_drawer/double_line_item_two.dart';
import '../widgets/sheet_util.dart';
import 'kpub_sheet.dart';

class KpubSettingsEntry extends ConsumerWidget {
  const KpubSettingsEntry({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = l10nOf(context);

    Future<void> showKpub() async {
      final theme = ref.read(themeProvider);
      final authUtil = ref.read(authUtilProvider);
      final message = l10n.kpubAuth;
      final auth = await authUtil.authenticate(context, message, message);

      if (!auth) {
        return;
      }

      return Sheets.showAppHeightNineSheet(
        context: context,
        widget: const KpubSheet(),
        theme: theme,
      );
    }

    return DoubleLineItemTwo(
      heading: l10n.kpubTitle,
      text: l10n.kpubAuth,
      icon: Icons.vpn_key,
      iconSize: 28,
      onPressed: showKpub,
    );
  }
}
