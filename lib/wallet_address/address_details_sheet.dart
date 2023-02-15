import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../app_providers.dart';
import '../util/util.dart';
import '../widgets/address_widgets.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/contact_info_button.dart';
import '../widgets/sheet_widget.dart';
import '../widgets/tap_outside_unfocus.dart';
import 'address_providers.dart';
import 'wallet_address.dart';

final _accountNameProvider = StateProvider<String?>((ref) => null);

final _timerProvider = StateProvider.autoDispose<Timer?>((ref) {
  final Timer? timer = null;

  ref.onDispose(() {
    timer?.cancel();
  });

  return timer;
});

class AddressDetailsSheet extends HookConsumerWidget {
  final WalletAddress address;

  const AddressDetailsSheet({
    Key? key,
    required this.address,
  }) : super(key: key);

  // FIXME - workaround
  static void saveChanges(WidgetRef ref, WalletAddress account) {
    final name = ref.read(_accountNameProvider);
    if (name != null && account.name != name && name.trim().isNotEmpty) {
      final accounts = ref.read(addressNotifierProvider);
      accounts.changeAddressName(account, name);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

    final addressCopiedTimer = ref.watch(_timerProvider.notifier);

    final nameFocusNode = useFocusNode();
    final nameController = useTextEditingController(text: address.name);
    final addressCopied = useState(false);
    final isMounted = useIsMounted();

    final title = address.type == AddressType.receive
        ? l10n.receiveAddress.toUpperCase()
        : l10n.changeAddress.toUpperCase();

    Future<void> copyAddress() async {
      await Clipboard.setData(ClipboardData(text: address.encoded));
      addressCopied.value = true;
      addressCopiedTimer.state?.cancel();
      addressCopiedTimer.state = Timer(
        const Duration(milliseconds: 800),
        () {
          if (!isMounted()) return;
          addressCopied.value = false;
        },
      );
    }

    void updateName(String value) {
      ref.read(_accountNameProvider.notifier).state = value;
    }

    // void deleteAccount() {
    //   ref.read(_accountNameProvider.notifier).state = null;
    //   ref.read(walletManagerProvider).removeAccount(account);

    //   Navigator.of(context).pop();
    // }

    // void confirmDelete() {
    //   AppDialogs.showConfirmDialog(
    //     context,
    //     l10n.hideAccountHeader,
    //     l10n.hideAccountText.replaceAll(
    //       "%1",
    //       l10n.addAccount,
    //     ),
    //     l10n.YES,
    //     deleteAccount,
    //     cancelText: l10n.NO,
    //   );
    // }

    void showExplorer() {
      final explorer = ref.read(blockExplorerProvider);
      final url = explorer.urlForAddress(address.encoded);
      openUrl(url);
    }

    useEffect(() {
      Future.microtask(() => updateName(address.name));
      return;
    }, const []);

    return TapOutsideUnfocus(
      child: SheetWidget(
        title: title,
        leftWidget: ContactInfoButton(
          visible: address.index != 0,
          onPressed: showExplorer,
        ),
        mainWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppTextField(
              topMargin: 10,
              controller: nameController,
              focusNode: nameFocusNode,
              textInputAction: TextInputAction.done,
              autocorrect: false,
              keyboardType: TextInputType.text,
              inputFormatters: [
                LengthLimitingTextInputFormatter(25),
              ],
              style: styles.textStyleAppTextField,
              onChanged: updateName,
            ),
            const SizedBox(height: 22),
            AddressThreeLineText(
              address: address.encoded,
              type: AddressThreeLineTextType.PRIMARY60,
            ),
            const SizedBox(height: 12),
            if (address.type == AddressType.receive)
              Expanded(
                child: Center(
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 280),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                      border: Border.all(color: theme.primary, width: 2),
                    ),
                    child: QrImage(
                      data: '${address.encoded}',
                      gapless: false,
                      embeddedImage: AssetImage('assets/qr_code_icon.png'),
                      embeddedImageStyle: QrEmbeddedImageStyle(
                        size: const Size(40, 40),
                      ),
                      backgroundColor: Colors.white,
                      errorCorrectionLevel: QrErrorCorrectLevel.Q,
                      semanticsLabel: 'QR code for address $address',
                    ),
                  ),
                ),
              ),
          ],
        ),
        bottomWidget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(children: [
            Visibility(
              visible: !addressCopied.value,
              replacement: SuccessButton(
                title: l10n.addressCopied,
              ),
              child: PrimaryButton(
                title: l10n.copyAddress,
                onPressed: copyAddress,
              ),
            ),
            const SizedBox(height: 16),
            PrimaryOutlineButton(
              title: l10n.close,
              onPressed: () => Navigator.pop(context),
            ),
          ]),
        ),
      ),
    );
  }
}
