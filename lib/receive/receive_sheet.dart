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
import '../send_sheet/account_address_widget.dart';
import '../wallet_address/address_providers.dart';
import '../widgets/buttons/primary_button.dart';
import '../widgets/buttons/primary_outline_button.dart';
import '../widgets/buttons/success_button.dart';
import '../widgets/sheet_handle.dart';
import 'share_card.dart';

class ReceiveSheet extends HookConsumerWidget {
  const ReceiveSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);

    final receiveAddress = ref.watch(receiveWalletAddressProvider);
    final address = receiveAddress.encoded;

    final shareCardKey = useRef(GlobalKey());
    final showShareCard = useState(false);
    final addressCopied = useState(false);
    final addressCopiedTimer = useRef<Timer?>(null);

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
      await Clipboard.setData(ClipboardData(text: address));
      addressCopied.value = true;
      addressCopiedTimer.value?.cancel();
      addressCopiedTimer.value = Timer(
        const Duration(milliseconds: 800),
        () => addressCopied.value = false,
      );
    }

    Future<void> shareAddress() async {
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
    }

    return SafeArea(
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
                const AccountAddressWidget(),
              ]),
              const SizedBox(width: 60, height: 60),
            ],
          ),
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
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 280),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                          border: Border.all(color: theme.primary, width: 2),
                        ),
                        child: QrImage(
                          data: '$address',
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
                  ],
                ),
              ),
            ),
          ),
          Padding(
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
                title: l10n.addressShare,
                disabled: showShareCard.value,
                onPressed: shareAddress,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
