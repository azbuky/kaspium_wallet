import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/buttons.dart';
import '../widgets/sheet_widget.dart';
import 'tx_report_dialog.dart';
import 'tx_report_options.dart';

class TxReportSheet extends HookConsumerWidget {
  const TxReportSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final state = useState(TxReportOptions());

    Future<void> generateCsv() async {
      await showAppDialog(
        context: context,
        builder: (_) => DownloadTxsDialog(
          options: state.value,
        ),
      );
    }

    return SheetWidget(
      title: l10n.txReport,
      mainWidget: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.10, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              l10n.txReportDetails,
              style: styles.textStyleAccount,
              textAlign: TextAlign.center,
              maxLines: 3,
            ),
            CheckboxListTile(
              title: Text(
                l10n.txReportOptionIgnoreCompound,
                style: styles.textStyleParagraphNormal,
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: state.value.ignoreCompoundTxs,
              checkColor: theme.text,
              activeColor: theme.primary,
              dense: true,
              onChanged: (value) {
                state.value = state.value.copyWith(
                  ignoreCompoundTxs: value ?? false,
                );
              },
            ),
            CheckboxListTile(
              title: Text(
                l10n.txReportOptionIgnoreSelfTxs,
                style: styles.textStyleParagraphNormal,
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: state.value.ignoreInternalTxs,
              checkColor: theme.text,
              activeColor: theme.primary,
              dense: true,
              onChanged: (value) {
                state.value = state.value.copyWith(
                  ignoreInternalTxs: value ?? false,
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            PrimaryButton(
              title: l10n.txReportGenerate,
              onPressed: generateCsv,
            ),
            const SizedBox(height: 16),
            PrimaryOutlineButton(
              title: l10n.close,
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
