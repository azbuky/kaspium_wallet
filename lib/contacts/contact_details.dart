import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../l10n/l10n.dart';
import '../send_sheet/send_sheet.dart';
import '../util/ui_util.dart';
import '../util/util.dart';
import '../widgets/address_widgets.dart';
import '../widgets/buttons.dart';
import '../widgets/contact_info_button.dart';
import '../widgets/dialog.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/qr_code_widget.dart';
import '../widgets/sheet_util.dart';
import '../widgets/trashcan_button.dart';
import 'contact.dart';

class ContactDetails extends HookConsumerWidget {
  final Contact contact;
  final String? documentsDirectory;

  const ContactDetails({
    Key? key,
    required this.contact,
    this.documentsDirectory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final addressCopied = useState(false);
    final addressCopiedTimer = useRef<Timer?>(null);

    void deleteContact() {
      ref.read(contactsProvider).removeContact(contact);
      final message = l10n.contactRemoved(contact.name);
      UIUtil.showSnackbar(message, context);
      Navigator.of(context).pop();
    }

    void confirmDeleteContact() {
      AppDialogs.showConfirmDialog(
        context,
        l10n.removeContact,
        l10n.removeContactConfirmation(contact.name),
        l10n.yesUppercase,
        deleteContact,
        cancelText: l10n.noUppercase,
      );
    }

    Future<void> copyAddress() async {
      await Clipboard.setData(ClipboardData(text: contact.address));
      addressCopied.value = true;
      addressCopiedTimer.value?.cancel();
      addressCopiedTimer.value = Timer(
        const Duration(milliseconds: 800),
        () => addressCopied.value = false,
      );
    }

    void showSendSheet() {
      Navigator.of(context).pop();
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        widget: SendSheet(contact: contact),
      );
    }

    return SafeArea(
      minimum: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.035,
      ),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 10, start: 10),
              child: TrashcanButton(onPressed: confirmDeleteContact),
            ),
            // The header of the sheet
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 140),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      l10n.contactHeader,
                      style: ref.watch(stylesProvider).textStyleHeader(context),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 10, end: 10),
              child: ContactInfoButton(
                onPressed: () {
                  final explorer = ref.read(blockExplorerProvider);
                  openUrl(explorer.urlForAddress(contact.address));
                },
              ),
            ),
          ],
        ),

        // The main container that holds Contact Name and Contact Address
        Expanded(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsetsDirectional.only(top: 19, bottom: 22),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Contact Name container
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.105,
                          right: MediaQuery.of(context).size.width * 0.105,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: theme.backgroundDarkest,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text(
                          contact.name,
                          textAlign: TextAlign.center,
                          style: styles.textStyleDialogOptions,
                        ),
                      ),
                      // Contact Address
                      GestureDetector(
                        onTap: copyAddress,
                        child: Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.105,
                            right: MediaQuery.of(context).size.width * 0.105,
                            top: 15,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 15,
                          ),
                          decoration: BoxDecoration(
                            color: theme.backgroundDarkest,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: AddressThreeLineText(
                            address: contact.address,
                            type: addressCopied.value
                                ? AddressTextType.SUCCESS_FULL
                                : AddressTextType.PRIMARY,
                          ),
                        ),
                      ),
                      // Address Copied text container
                      Container(
                        margin: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Text(
                          addressCopied.value ? l10n.addressCopied : '',
                          style: styles.textStyleParagraphThinSuccess,
                        ),
                      ),
                      // QR Code
                      FittedBox(
                        fit: BoxFit.contain,
                        child: QrCodeWidget(
                          data: contact.address,
                          onTap: copyAddress,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const ListBottomGradient(),
              const ListTopGradient(),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(children: [
            PrimaryButton(
              title: l10n.send,
              onPressed: showSendSheet,
            ),
            const SizedBox(height: 16),
            PrimaryOutlineButton(
              title: l10n.close,
              onPressed: () => Navigator.pop(context),
            ),
          ]),
        ),
      ]),
    );
  }
}
