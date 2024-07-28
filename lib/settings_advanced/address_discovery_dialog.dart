import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../app_router.dart';
import '../l10n/l10n.dart';
import '../util/ui_util.dart';
import '../wallet_address/address_discovery.dart';
import '../wallet_address/wallet_address.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/dialog.dart';

class AddressDiscoveryDialog extends HookConsumerWidget {
  const AddressDiscoveryDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final addresses = ref.read(addressNotifierProvider);

    final scanIndexes = useState<ScanIndexesPair>((
      receive: ScanIndexes(
        start: addresses.lastUsedReceiveIndex,
        scanned: null,
        last: null,
      ),
      change: ScanIndexes(
        start: addresses.lastUsedChangeIndex,
        scanned: null,
        last: null,
      ),
    ));

    final receiveIndexes = scanIndexes.value.receive;
    final changeIndexes = scanIndexes.value.change;

    Future<void> scan() async {
      try {
        AppDialogs.showInProgressDialog(
          context,
          l10n.scanningTitle,
          l10n.scanningDescription,
        );
        final network = ref.read(networkProvider);
        final auth = ref.read(walletAuthProvider.notifier);
        final addressGenerator = auth.addressGenerator(network);
        final client = ref.read(kaspaClientProvider);
        final api = ref.read(kaspaApiServiceProvider);

        final addressDiscovery = AddressDiscovery(
          client: client,
          api: api,
          addressGenerator: addressGenerator,
          addressNameCallback: (type, index) {
            return type == AddressType.receive
                ? l10n.receiveIndexParam('$index')
                : l10n.changeIndexParam('$index');
          },
        );

        bool cancelled = false;

        final result = await addressDiscovery.addressDiscovery(
          startReceiveIndex: receiveIndexes.nextScanStart,
          startChangeIndex: changeIndexes.nextScanStart,
          maxGap: 9,
          onProgress: (type, index) => !cancelled,
        );

        scanIndexes.value = (
          receive: ScanIndexes(
            start: receiveIndexes.start,
            scanned: result.receive.scanIndexes.scanned,
            last: result.receive.scanIndexes.last ??
                receiveIndexes.last ??
                receiveIndexes.start,
          ),
          change: ScanIndexes(
            start: changeIndexes.start,
            scanned: result.change.scanIndexes.scanned,
            last: result.change.scanIndexes.last ??
                changeIndexes.last ??
                changeIndexes.start,
          )
        );

        if (result.isNotEmpty) {
          await addresses.addAddresses(result.addresses);

          final txNotifier = ref.read(txNotifierProvider);
          await txNotifier.cache.addWalletTxIds(result.txIds);
          await txNotifier.reload();
        }
      } catch (e) {
        UIUtil.showSnackbar(l10n.scanFailedMessage, context);
      } finally {
        appRouter.pop(context);
      }
    }

    return AppAlertDialog(
      title: Text(
        l10n.addressDiscovery,
        style: styles.textStyleDialogHeader,
      ),
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  l10n.indexHeader,
                  style: styles.textStyleParagraph,
                ),
                Text(
                  l10n.currentIndex,
                  style: styles.textStyleParagraph,
                ),
                Text(
                  l10n.scannedIndex,
                  style: styles.textStyleParagraph,
                ),
                Text(
                  l10n.newIndex,
                  style: styles.textStyleParagraph,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  l10n.receive,
                  style: styles.textStyleParagraph,
                ),
                Text(
                  '${receiveIndexes.start ?? '-'}',
                  style: styles.textStyleParagraph,
                ),
                Text(
                  '${receiveIndexes.scanned ?? '-'}',
                  style: styles.textStyleParagraph,
                ),
                Text(
                  '${receiveIndexes.last ?? '-'}',
                  style: styles.textStyleParagraph,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  l10n.change,
                  style: styles.textStyleParagraph,
                ),
                Text(
                  '${changeIndexes.start ?? '-'}',
                  style: styles.textStyleParagraph,
                ),
                Text(
                  '${changeIndexes.scanned ?? '-'}',
                  style: styles.textStyleParagraph,
                ),
                Text(
                  '${changeIndexes.last ?? '-'}',
                  style: styles.textStyleParagraph,
                ),
              ],
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          style: styles.dialogButtonStyle,
          onPressed: () => appRouter.pop(context),
          child: Text(
            l10n.closeUppercased,
            style: styles.textStyleDialogOptions,
          ),
        ),
        TextButton(
          style: styles.dialogButtonStyle,
          onPressed: scan,
          child: Text(
            l10n.scanMore,
            style: styles.textStyleDialogOptions,
          ),
        ),
      ],
    );
  }
}
