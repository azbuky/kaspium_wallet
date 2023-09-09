import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
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
          onProgress: (type, index) {
            return !cancelled;
          },
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
          await addresses.addAddresses(result.receive.addresses.values);
          await addresses.addAddresses(result.change.addresses.values);

          final txNotifier = ref.read(txNotifierProvider);
          await txNotifier.cache.addWalletTxIds(result.txIds);
          await txNotifier.reload();
        }
      } catch (e) {
        UIUtil.showSnackbar(l10n.scanFailedMessage, context);
      } finally {
        Navigator.of(context).pop();
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
                Text(l10n.indexHeader),
                Text(l10n.currentIndex),
                Text(l10n.scannedIndex),
                Text(l10n.newIndex),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(l10n.receive),
                Text('${receiveIndexes.start ?? '-'}'),
                Text('${receiveIndexes.scanned ?? '-'}'),
                Text('${receiveIndexes.last ?? '-'}'),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(l10n.change),
                Text('${changeIndexes.start ?? '-'}'),
                Text('${changeIndexes.scanned ?? '-'}'),
                Text('${changeIndexes.last ?? '-'}'),
              ],
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          style: styles.dialogButtonStyle,
          onPressed: () => Navigator.of(context).pop(),
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
