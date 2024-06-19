import 'dart:io';

import 'package:collection/collection.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../app_providers.dart';
import '../app_router.dart';
import '../l10n/l10n.dart';
import '../util/ui_util.dart';
import '../widgets/app_simpledialog.dart';
import 'tx_report_options.dart';
import 'tx_report_util.dart';

class DownloadTxsDialog extends HookConsumerWidget {
  final TxReportOptions options;

  const DownloadTxsDialog({
    super.key,
    required this.options,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.read(stylesProvider);
    final l10n = l10nOf(context);

    final message = useState('');
    final subMessage = useState('');
    final loading = useState(true);
    final csv = useRef<String>('');

    useEffect(() {
      Future.microtask(() async {
        if (!context.mounted) {
          return;
        }
        final txNotifier = ref.read(txNotifierProvider);
        final txNotes = ref.read(txNotesProvider);
        final addresses = ref.read(addressNotifierProvider);

        try {
          if (options.refreshTxs) {
            message.value = l10n.txReportStatusRefreshing;

            final balanceNotifier = ref.read(balanceNotifierProvider);
            final addressNotifier = ref.read(addressNotifierProvider);
            final pendingAddresses = addressNotifier.receiveAddresses
                .followedBy(addressNotifier.changeAddresses)
                .where((address) => !address.used)
                .map((e) => e.encoded)
                .toIList();

            await txNotifier.refreshWalletTxs(
              balances: balanceNotifier.balances,
              pendingAddresses: pendingAddresses,
            );

            if (!context.mounted) {
              return;
            }
          }

          final txCount = txNotifier.cache.txCount;
          message.value = l10n.txReportStatusLoading;
          while (txNotifier.hasMore) {
            final loadedCount = txNotifier.loadedTxs.length;
            subMessage.value = l10n.txReportNoLoadedTxs(loadedCount, txCount);
            await txNotifier.loadMore(50);

            if (!context.mounted) {
              return;
            }
          }

          final reportItems = txNotifier.loadedTxs.reversed
              .where((tx) => tx.apiTx.isAccepted)
              .map((tx) => convertTx(
                    tx,
                    addresses: addresses,
                    txNotes: txNotes,
                    l10n: l10n,
                  ));

          final csvLines = reportItems
              .map<String?>((item) {
                if (options.ignoreCompoundTxs && item.isCompound ||
                    options.ignoreInternalTxs && item.isSendToSelf) {
                  return null;
                }

                return getCsvForItem(item);
              })
              .whereNotNull()
              .toIList();
          csv.value = [getCsvHeader(l10n)].followedBy(csvLines).join('\n');

          message.value = l10n.txReportStatusReady;
          subMessage.value = l10n.txReportNoTxs(csvLines.length);
          loading.value = false;
        } catch (e) {
          UIUtil.showSnackbar(l10n.txReportError, context);
        }
      });
      return null;
    }, const []);

    Future<void> downloadCsv() async {
      final exportTime = DateTime.now();
      final format = DateFormat('yyyyMMdd_HHmmss');
      final fileName = "kaspium_transactions_${format.format(exportTime)}.csv";
      final baseDiractory = await getTemporaryDirectory();
      final txFile = File('${baseDiractory.path}/$fileName');
      await txFile.writeAsString(csv.value);

      final lockDisabled = ref.read(lockDisabledProvider.notifier);
      lockDisabled.state = true;
      await Share.shareXFiles([XFile(txFile.path)]);
      lockDisabled.state = false;
    }

    return AppAlertDialog(
      title: Text(
        l10n.txReport,
        style: styles.textStyleDialogHeader,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            message.value,
            style: styles.textStyleSettingItemHeader,
            maxLines: 2,
          ),
          const SizedBox(height: 10),
          Text(
            subMessage.value,
            style: styles.textStyleSettingItemHeader,
          ),
        ],
      ),
      actions: [
        if (loading.value == false)
          TextButton(
            style: styles.dialogButtonStyle,
            onPressed: downloadCsv,
            child: Text(
              l10n.txReportGetReport.toUpperCase(),
              style: styles.textStyleDialogOptions,
            ),
          ),
        TextButton(
          style: styles.dialogButtonStyle,
          onPressed: () => appRouter.pop(context),
          child: Text(
            l10n.cancel.toUpperCase(),
            style: styles.textStyleDialogOptions,
          ),
        ),
      ],
    );
  }
}
