import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../app_router.dart';
import '../contacts/contact_add_sheet.dart';
import '../l10n/l10n.dart';
import '../util/ui_util.dart';
import '../util/util.dart';
import '../widgets/buttons.dart';
import '../widgets/sheet_handle.dart';
import '../widgets/sheet_util.dart';
import 'transaction_details.dart';
import 'transaction_types.dart';

class TransactionDetailsSheet extends ConsumerWidget {
  final String transactionId;
  final String address;
  final bool displayContactButton;
  final bool displayAddressButton;
  final TxItem? txItem;

  const TransactionDetailsSheet({
    super.key,
    required this.transactionId,
    required this.address,
    this.displayContactButton = false,
    this.displayAddressButton = true,
    this.txItem,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = l10nOf(context);
    final styles = ref.watch(stylesProvider);

    void addContact() {
      appRouter.pop(context);
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

    Future<void> updateFee() async {
      final txItem = this.txItem;
      if (txItem == null) {
        return;
      }
      UIUtil.showUpdateFeeFlow(
        context,
        ref: ref,
        tx: txItem.tx,
        address: address,
      );
    }

    return SafeArea(
      minimum: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.035,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SheetHandle(),
          if (txItem != null) ...[
            Expanded(child: TransactionDetails(txItem: txItem!)),
          ],
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 20),
                  if (txItem?.pending ?? false) ...[
                    PrimaryButton(
                      title: l10n.feeUpdate,
                      onPressed: updateFee,
                    ),
                    const SizedBox(height: 16),
                  ] else if (displayAddressButton) ...[
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
                  if (txItem == null)
                    PrimaryOutlineButton(
                      title: l10n.viewTransaction,
                      onPressed: viewTransaction,
                    )
                  else
                    PrimaryOutlineButton(
                      title: l10n.close,
                      onPressed: () => appRouter.pop(context),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
