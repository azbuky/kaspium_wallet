import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../contacts/contact.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../send_sheet/send_sheet.dart';
import '../widgets/address_widgets.dart';
import '../widgets/sheet_util.dart';

class DonateMenuItem extends ConsumerWidget {
  final Contact contact;

  const DonateMenuItem({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    void donate() {
      final l10n = l10nOf(context);
      final uri = KaspaUri(
        address: Address.decodeAddress(contact.address),
      );
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        widget: SendSheet(
          title: l10n.donate.toUpperCase(),
          uri: uri,
        ),
      );
    }

    return TextButton(
      style: styles.defaultTextButtonStyle,
      onPressed: donate,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Divider(height: 2, color: theme.text15),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            margin: const EdgeInsetsDirectional.only(start: 20, end: 12),
            height: 80,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    contact.name,
                    style: styles.textStyleSettingItemHeader,
                  ),
                  AddressTwoLineText(address: contact.address),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
