import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../widgets/app_simpledialog.dart';
import 'address_settings.dart';

class AddressFilterDialog extends ConsumerWidget {
  const AddressFilterDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final style = styles.textStyleDialogOptions;

    return AppSimpleDialog(
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          l10n.addressFilterDialogTitle,
          style: styles.textStyleDialogHeader,
        ),
      ),
      children: [
        SimpleDialogOption(
          onPressed: () => Navigator.pop(context, AddressFilter.all),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              l10n.addressFilterDialogOptionAllAddresses,
              style: style,
            ),
          ),
        ),
        SimpleDialogOption(
          onPressed: () => Navigator.pop(context, AddressFilter.nonZero),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              l10n.addressFilterDialogOptionNonZeroBalances,
              style: style,
            ),
          ),
        ),
      ],
    );
  }
}
