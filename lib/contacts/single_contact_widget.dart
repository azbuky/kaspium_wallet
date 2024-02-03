import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../util/ui_util.dart';
import '../widgets/address_widgets.dart';
import '../widgets/app_icon_button.dart';
import '../widgets/sheet_util.dart';
import 'contact.dart';
import 'contact_details.dart';

class SingleContactWidget extends ConsumerWidget {
  final Contact contact;

  const SingleContactWidget({
    Key? key,
    required this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    void showDetails() {
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        widget: ContactDetails(contact: contact),
      );
    }

    Future<void> copyAddress() async {
      await Clipboard.setData(ClipboardData(text: contact.address));
      final l10n = l10nOf(context);
      final message = l10n.contactAddressCopied(contact.address);
      UIUtil.showSnackbar(message, context);
    }

    return TextButton(
      style: styles.defaultTextButtonStyle,
      onPressed: showDetails,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Divider(height: 2, color: theme.text15),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            margin: const EdgeInsetsDirectional.only(start: 20, end: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Container(
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
                ),
                Center(
                  child: AppIconButton(
                    icon: Icons.copy,
                    onPressed: copyAddress,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
