import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share_plus/share_plus.dart';

import '../app_providers.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../send_sheet/account_address_widget.dart';
import '../util/ui_util.dart';
import '../widgets/buttons/primary_outline_button.dart';
import '../widgets/sheet_handle.dart';
import '../widgets/sheet_header_button.dart';
import '../widgets/tap_outside_unfocus.dart';
import 'receive_amount_field.dart';
import 'share_card.dart';

class ReceiveSheet extends HookConsumerWidget {
  const ReceiveSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = l10nOf(context);

    final receiveAddress = ref.watch(receiveWalletAddressProvider);
    final address = receiveAddress.encoded;
    final amount = ref.watch(amountProvider);

    final kaspaUri = KaspaUri(address: receiveAddress.address, amount: amount);

    final shareCardKey = useRef(GlobalKey());
    final showShareCard = useState(false);

    Future<Uint8List?> _capturePng() async {
      if (shareCardKey.value.currentContext == null) {
        return null;
      }
      RenderRepaintBoundary boundary = shareCardKey.value.currentContext!
          .findRenderObject() as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage(pixelRatio: 5);
      final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      return byteData?.buffer.asUint8List();
    }

    Future<void> copyAddress() async {
      try {
        await Clipboard.setData(ClipboardData(text: address));
        UIUtil.showSnackbar(l10n.addressCopied, context);
      } catch (_) {
        UIUtil.showSnackbar(l10n.addressCopiedFailed, context);
      }
    }

    Future<void> copyUri() async {
      try {
        await Clipboard.setData(ClipboardData(text: kaspaUri.toString()));
        UIUtil.showSnackbar(l10n.addressCopied, context);
      } catch (_) {
        UIUtil.showSnackbar(l10n.addressCopiedFailed, context);
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
        final byteData = await _capturePng();
        if (byteData != null) {
          final file = await XFile.fromData(
            byteData,
            name: '${address}.png',
            mimeType: 'image/png',
          );
          Share.shareXFiles([file], text: address);
        } else {
          Share.share(address);
        }
        showShareCard.value = false;
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to share address', e, st);
      }

      lockDisabled.state = false;
    }

    return TapOutsideUnfocus(
      child: SafeArea(
        minimum: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.035,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 60, height: 60),
                Column(children: [
                  const SheetHandle(),
                  GestureDetector(
                    child: const AccountAddressWidget(),
                    onTap: copyAddress,
                  ),
                ]),
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 10, end: 10),
                  child: SheetHeaderButton(
                    icon: Icons.copy,
                    onPressed: copyUri,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const ReceiveAmountField(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 28,
                  left: 20,
                  right: 20,
                ),
                child: Center(
                  child: Stack(
                    children: [
                      Visibility(
                        visible: showShareCard.value,
                        child: Container(
                          child: AppShareCard(globalKey: shareCardKey.value),
                          alignment: const AlignmentDirectional(0, 0),
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
                        child: GestureDetector(
                          onTap: copyUri,
                          child: Container(
                            constraints: BoxConstraints(maxWidth: 280),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              shape: BoxShape.rectangle,
                              border:
                                  Border.all(color: theme.primary, width: 2),
                            ),
                            child: QrImageView(
                              data: '$kaspaUri',
                              gapless: false,
                              embeddedImage:
                                  AssetImage('assets/qr_code_icon.png'),
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
                ),
              ),
            ),
            PrimaryOutlineButton(
              margin: const EdgeInsets.symmetric(horizontal: 28),
              title: l10n.addressShare,
              disabled: showShareCard.value,
              onPressed: shareAddress,
            ),
          ],
        ),
      ),
    );
  }
}
