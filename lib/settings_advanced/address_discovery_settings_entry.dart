import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../l10n/l10n.dart';
import '../settings_drawer/double_line_item_two.dart';
import '../widgets/app_simpledialog.dart';
import 'address_discovery_dialog.dart';

class AddressDiscoverySettingsEntry extends ConsumerWidget {
  const AddressDiscoverySettingsEntry({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = l10nOf(context);

    Future<void> scanMoreAddresses() async {
      await showAppDialog(
        context: context,
        builder: (_) => const AddressDiscoveryDialog(),
      );
    }

    return DoubleLineItemTwo(
      heading: l10n.addressDiscovery,
      text: l10n.scanMoreAddresses,
      icon: Icons.account_balance_wallet,
      iconSize: 28,
      onPressed: scanMoreAddresses,
    );
  }
}
