import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../util/contacts.dart' as contactsHelper;
import '../widgets/app_icon_button.dart';
import '../widgets/buttons/text_outline_button.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_util.dart';
import 'contact_add_sheet.dart';
import 'contact_list_widget.dart';

class ContactsWidget extends ConsumerWidget {
  final VoidCallback onBackAction;

  const ContactsWidget({
    Key? key,
    required this.onBackAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    Future<void> importContacts() =>
        contactsHelper.importContacts(ref, context);

    Future<void> exportContacts() =>
        contactsHelper.exportContacts(ref, context);

    void addContact() {
      Sheets.showAppHeightNineSheet(
        context: context,
        widget: const ContactAddSheet(),
        theme: theme,
      );
    }

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
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: AppIconButton(
                        icon: AppIcons.back,
                        onPressed: onBackAction,
                      ),
                    ),
                    Text(
                      l10n.contactsHeader,
                      style: styles.textStyleSettingsHeader,
                    ),
                  ]),
                  Row(children: [
                    Tooltip(
                      message: l10n.import,
                      child: AppIconButton(
                        icon: AppIcons.import_icon,
                        onPressed: importContacts,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Tooltip(
                      message: l10n.export,
                      child: AppIconButton(
                        icon: AppIcons.export_icon,
                        onPressed: exportContacts,
                      ),
                    ),
                    const SizedBox(width: 12),
                  ]),
                ],
              ),
            ),
            Expanded(
              child: Stack(children: [
                const ContactListWidget(),
                const ContactListTopGradient(),
                const ContactListBottomGradient(),
              ]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: TextOutlineButton(
                title: l10n.addContact,
                margin: const EdgeInsets.only(left: 28, right: 28, top: 8),
                onPressed: addContact,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
