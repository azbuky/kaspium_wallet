import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../send_sheet/balance_text_widget.dart';
import '../util/ui_util.dart';
import '../widgets/address_widgets.dart';
import '../widgets/sheet_util.dart';
import 'address_details_sheet.dart';
import 'wallet_address.dart';

class AddressListItem extends ConsumerWidget {
  final WalletAddress address;
  final void Function(WalletAddress address)? onSelection;

  const AddressListItem({
    super.key,
    required this.address,
    this.onSelection,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final accounts = ref.watch(addressNotifierProvider);

    void showAddressDetails() {
      if (onSelection != null) {
        return onSelection?.call(address);
      }
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: ref.read(themeProvider),
        widget: AddressDetailsSheet(address: address),
      );
    }

    Future<void> copyAddress() async {
      await Clipboard.setData(ClipboardData(text: address.encoded));
      final message = address.type == AddressType.receive
          ? l10n.receiveAddressCopied
          : l10n.changeAddressCopied;
      UIUtil.showSnackbar(message, context);
    }

    return Column(
      children: [
        TextButton(
          style: styles.defaultTextButtonStyle,
          onPressed: showAddressDetails,
          child: Container(
            height: 120,
            padding: const EdgeInsets.only(top: 8),
            margin: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Stack(
                    children: [
                      Center(
                        child: Icon(
                          AppIcons.accountwallet,
                          size: 30,
                          color: accounts.isAddressSelected(address)
                              ? theme.success
                              : theme.primary,
                        ),
                      ),
                      Center(
                        child: Container(
                          width: 40,
                          height: 30,
                          alignment: AlignmentDirectional(0, 0.3),
                          child: Text(
                            address.getShortName().toUpperCase(),
                            style: styles.textStyleAccountShortName,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Account name and address
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsetsDirectional.only(start: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    address.name,
                                    style: styles.textStyleDialogOptions,
                                  ),
                                ),
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: AddressThreeLineText(
                                    address: address.encoded,
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            child: TextButton(
                              style: styles.roundedTextButtonStyle,
                              child: Icon(Icons.copy, color: theme.text),
                              onPressed: copyAddress,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.only(top: 4, start: 20),
                        child: BalanceRowWidget(address: address),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
