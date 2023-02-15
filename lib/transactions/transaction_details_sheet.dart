import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../contacts/contact_add_sheet.dart';
import '../util/util.dart';
import '../widgets/buttons.dart';
import '../widgets/sheet_util.dart';

class TransactionDetailsSheet extends ConsumerWidget {
  final String transactionId;
  final String address;
  final bool displayContactButton;
  final bool displayAddressButton;

  const TransactionDetailsSheet({
    Key? key,
    required this.transactionId,
    required this.address,
    this.displayContactButton = false,
    this.displayAddressButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    void addContact() {
      Navigator.of(context).pop();
      Sheets.showAppHeightNineSheet(
        context: context,
        widget: ContactAddSheet(address: address),
        theme: theme,
      );
    }

    void viewAddress() {
      final explorer = ref.read(blockExplorerProvider);
      openUrl(explorer.urlForAddress(address));
    }

    void viewTransaction() {
      final explorer = ref.read(blockExplorerProvider);
      openUrl(explorer.urlForTx(transactionId));
    }

    return SafeArea(
      minimum: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.035,
      ),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 24),
              if (displayAddressButton) ...[
                Stack(children: [
                  PrimaryButton(
                    title: l10n.viewAddress,
                    onPressed: viewAddress,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Container(
                          height: 55,
                          width: 55,
                          child: Visibility(
                            visible: displayContactButton,
                            child: TextButton(
                              style: styles.innerButtonStyle,
                              onPressed: addContact,
                              child: Icon(
                                AppIcons.addcontact,
                                size: 35,
                                color: theme.backgroundDark,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
                const SizedBox(height: 16),
              ],
              PrimaryOutlineButton(
                title: l10n.viewTransaction,
                onPressed: viewTransaction,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
