import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../contacts/contact_labels.dart';
import '../l10n/l10n.dart';
import '../widgets/app_icon_button.dart';
import 'donate_menu_item.dart';

class DonateMenu extends ConsumerWidget {
  final VoidCallback onBackAction;

  const DonateMenu({
    Key? key,
    required this.onBackAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.backgroundDark,
        boxShadow: [
          BoxShadow(
            color: theme.barrierWeakest,
            offset: Offset(-5, 0),
            blurRadius: 20,
          ),
        ],
      ),
      child: SafeArea(
        minimum: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.035,
          top: 60,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10, top: 5),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: AppIconButton(
                  icon: AppIcons.back,
                  onPressed: onBackAction,
                ),
              ),
              Text(
                l10n.donate,
                style: styles.textStyleSettingsHeader,
              ),
            ]),
          ),
          Container(
            margin: const EdgeInsetsDirectional.only(
              start: 30,
              bottom: 10,
            ),
            child: Text(
              l10n.donateTo,
              style: styles.textStyleAppTextFieldHint,
            ),
          ),
          for (final contact in kDonationAddresses)
            DonateMenuItem(contact: contact),
        ]),
      ),
    );
  }
}
