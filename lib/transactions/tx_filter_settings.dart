import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../l10n/l10n.dart';
import '../settings/tx_settings.dart';
import '../settings_drawer/double_line_item_two.dart';
import 'tx_filter_dialog.dart';

class TxFilterSettings extends ConsumerWidget {
  const TxFilterSettings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = l10nOf(context);

    final txFilter = ref.watch(txFilterProvider);

    final txFilterSelectedOption = switch (txFilter) {
      TxFilter.all => l10n.txFilterDialogOptionAllTxs,
      TxFilter.hideNotAcceptedCoinbase =>
        l10n.txFilterDialogOptionHideNotAcceptedCoinbase,
    };

    return DoubleLineItemTwo(
      heading: l10n.txFilterDialogTitle,
      text: txFilterSelectedOption,
      icon: Icons.filter_list,
      iconSize: 28,
      onPressed: () => showTxFilterDialog(context, ref),
    );
  }
}
