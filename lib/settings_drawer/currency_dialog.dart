import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../settings/available_currency.dart';
import '../widgets/app_simpledialog.dart';

class CurrencyDialog extends ConsumerWidget {
  const CurrencyDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    return AppSimpleDialog(
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          l10n.currency,
          style: styles.textStyleDialogHeader,
        ),
      ),
      children: [
        for (final value in AvailableCurrencies.values)
          SimpleDialogOption(
            onPressed: () => Navigator.pop(context, value),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                AvailableCurrency(value).getDisplayName(context),
                style: styles.textStyleDialogOptions,
              ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Divider(height: 2, color: theme.text15),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 24, top: 12),
          child: Text(
            l10n.currencyPoweredBy,
            style: styles.textStyleDialogOptions,
          ),
        ),
      ],
    );
  }
}
