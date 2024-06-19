import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../app_router.dart';
import '../l10n/l10n.dart';
import '../widgets/app_simpledialog.dart';
import 'tx_settings/tx_settings_providers.dart';
import 'tx_settings/tx_settings_types.dart';

Future<void> showTxFilterDialog(BuildContext context, WidgetRef ref) async {
  final selection = await showAppDialog<TxFilter>(
    context: context,
    builder: (_) => const TxFilterDialog(),
  );
  if (selection != null) {
    final notifier = ref.read(txSettingsProvider.notifier);
    notifier.setTxFilter(selection);
  }
}

class TxFilterDialog extends ConsumerWidget {
  const TxFilterDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final style = styles.textStyleDialogOptions;

    return AppSimpleDialog(
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          l10n.txFilterDialogTitle,
          style: styles.textStyleDialogHeader,
        ),
      ),
      children: [
        SimpleDialogOption(
          onPressed: () => appRouter.pop(
            context,
            withResult: TxFilter.all,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              l10n.txFilterDialogOptionAllTxs,
              style: style,
            ),
          ),
        ),
        SimpleDialogOption(
          onPressed: () => appRouter.pop(
            context,
            withResult: TxFilter.hideNotAcceptedCoinbase,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              l10n.txFilterDialogOptionHideNotAcceptedCoinbase,
              style: style,
            ),
          ),
        ),
      ],
    );
  }
}
