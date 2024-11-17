import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import '../l10n/l10n.dart';
import '../settings_drawer/double_line_item_two.dart';
import '../tx_report/tx_report_sheet.dart';
import '../widgets/sheet_util.dart';

class TxReportSettingsEntry extends ConsumerWidget {
  const TxReportSettingsEntry({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = l10nOf(context);

    Future<void> transactionReport() async {
      final theme = ref.read(themeProvider);
      Sheets.showAppHeightEightSheet(
        context: context,
        theme: theme,
        widget: const TxReportSheet(),
      );
    }

    return DoubleLineItemTwo(
      heading: l10n.txReport,
      text: l10n.txReportSubtitle,
      icon: Icons.download,
      iconSize: 28,
      onPressed: transactionReport,
    );
  }
}
