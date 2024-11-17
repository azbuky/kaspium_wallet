import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../l10n/l10n.dart';
import '../settings_drawer/double_line_item_two.dart';
import '../util/ui_util.dart';
import '../widgets/app_simpledialog.dart';
import 'compound_utxos_dialog.dart';

class CompoundUtxosSettingsEntry extends ConsumerWidget {
  const CompoundUtxosSettingsEntry({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = l10nOf(context);

    Future<void> compoundUtxos() async {
      final (:cont, :rbf) = await UIUtil.checkForPendingTx(context, ref: ref);
      if (cont) {
        showAppDialog(
          context: context,
          builder: (_) => CompoundUtxosDialog(rbf: rbf),
        );
      }
    }

    return DoubleLineItemTwo(
      heading: l10n.compoundUtxos,
      text: l10n.compoundUtxosDescription,
      icon: Icons.refresh,
      iconSize: 28,
      onPressed: compoundUtxos,
    );
  }
}
