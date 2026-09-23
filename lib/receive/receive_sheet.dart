import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:share_plus/share_plus.dart';

import '../app_providers.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../send_sheet/account_address_widget.dart';
import '../util/ui_util.dart';
import '../wallet_address/address_selection_sheet.dart';
import '../wallet_address/wallet_address.dart';
import '../widgets/action_buttons_wrapper.dart';
import '../widgets/buttons/primary_outline_button.dart';
import '../widgets/qr_code_widget.dart';
import '../widgets/sheet_handle.dart';
import '../widgets/sheet_header_button.dart';
import '../widgets/sheet_util.dart';
import '../widgets/sheet_wrapper.dart';
import 'receive_amount_field.dart';
import 'share_card.dart';

class ReceiveSheet extends HookConsumerWidget {
  const ReceiveSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = l10nOf(context);

    final receiveAddress = ref.watch(selectedAddressProvider);
    final address = receiveAddress.encoded;
    final amount = ref.watch(amountProvider);

    final kaspaUri = KaspaUri(address: receiveAddress.address, amount: amount);

    final shareCardKey = useRef(GlobalKey());
    final showShareCard = useState(false);

    Future<Uint8List?> capturePng() async {
      if (shareCardKey.value.currentContext == null) {
        return null;
      }
      RenderRepaintBoundary boundary =
          shareCardKey.value.currentContext!.findRenderObject()
              as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage(pixelRatio: 5);
      final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      return byteData?.buffer.asUint8List();
    }

    Future<void> selectAddress() async {
      final selected = await Sheets.showAppHeightNineSheet<WalletAddress>(
        context: context,
        theme: theme,
        widget: const AddressSelectionSheet(addressType: .receive),
      );

      if (selected == null || !context.mounted) return;
      ref.read(selectedAddressProvider.notifier).state = selected;
    }

    Future<void> copyAddress() async {
      try {
        await Clipboard.setData(ClipboardData(text: address));
        UIUtil.showSnackbar(l10n.addressCopied);
      } catch (_) {
        UIUtil.showSnackbar(l10n.addressCopiedFailed);
      }
    }

    Future<void> copyUri() async {
      try {
        await Clipboard.setData(ClipboardData(text: kaspaUri.toString()));
        UIUtil.showSnackbar(l10n.kaspaUriCopied);
      } catch (_) {
        UIUtil.showSnackbar(l10n.kaspaUriCopyFailed);
      }
    }

    Future<void> shareAddress() async {
      final lockDisabled = ref.read(lockDisabledProvider.notifier);
      lockDisabled.state = true;

      try {
        showShareCard.value = true;
        await Future.delayed(Duration(milliseconds: 50));
        if (!showShareCard.value) {
          return;
        }
        final byteData = await capturePng();
        if (!context.mounted) return;
        final box = context.findRenderObject() as RenderBox?;
        final params = ShareParams(
          sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
          text: address,
          files: [
            if (byteData != null)
              XFile.fromData(byteData, mimeType: 'image/png'),
          ],
          fileNameOverrides: [
            if (byteData != null) '$address.png',
          ],
        );
        SharePlus.instance.share(params);
        showShareCard.value = false;
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to share address', error: e, stackTrace: st);
      }

      lockDisabled.state = false;
    }

    return SheetWrapper(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            crossAxisAlignment: .start,
            children: [
              const SizedBox(width: 60, height: 60),
              Expanded(
                child: Column(
                  children: [
                    const SheetHandle(),
                    GestureDetector(
                      onTap: selectAddress,
                      onLongPress: copyAddress,
                      child: AccountAddressWidget(address: receiveAddress),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const .directional(top: 10, end: 10),
                child: SheetHeaderButton(
                  icon: Icons.copy,
                  onPressed: copyAddress,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ReceiveAmountField(hint: l10n.optionalLabel),
          const SizedBox(height: 16),
          Expanded(
            child: Padding(
              padding: const .symmetric(horizontal: 20),
              child: Center(
                child: Stack(
                  children: [
                    Visibility(
                      visible: showShareCard.value,
                      child: Container(
                        alignment: const AlignmentDirectional(0, 0),
                        child: AppShareCard(globalKey: shareCardKey.value),
                      ),
                    ),
                    // This is for hiding the share card
                    Center(
                      child: Container(
                        width: 260,
                        height: 150,
                        color: theme.backgroundDark,
                      ),
                    ),
                    Center(
                      child: QrCodeWidget(
                        data: '$kaspaUri',
                        onTap: copyUri,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ActionButtonsWrapper(
            buttons: [
              PrimaryOutlineButton(
                title: l10n.addressShare,
                disabled: showShareCard.value,
                onPressed: shareAddress,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
