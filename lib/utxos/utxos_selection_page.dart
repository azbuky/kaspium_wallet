import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../app_router.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../util/ui_util.dart';
import '../widgets/buttons.dart';
import '../widgets/sheet_widget.dart';
import 'utxos_widget.dart';

final selectionSummaryProvider =
    Provider.family.autoDispose<SendTx, (SendTx, Address)>((ref, state) {
  final spendableUtxos = ref.watch(spendableUtxosProvider);
  final selectedUtxos = ref.watch(selectedUtxosProvider).toList();

  final tx = state.$1;
  final changeAddress = state.$2;

  final totalAmountRaw = selectedUtxos.fold(
    BigInt.zero,
    (total, utxo) => total + utxo.utxoEntry.amount,
  );
  final txBuilder = TransactionBuilder(
    utxos: spendableUtxos,
    priorityFee: tx.priorityFee,
  );

  var amountRaw = totalAmountRaw -
      tx.priorityFee.raw -
      kFeePerInput * BigInt.from(selectedUtxos.length);
  if (amountRaw > tx.amount.raw) {
    amountRaw = tx.amount.raw;
  }
  try {
    final newTx = txBuilder.createUnsignedTransaction(
      toAddress: tx.toAddress,
      amountRaw: amountRaw,
      changeAddress: changeAddress,
      preselectedUtxos: selectedUtxos,
    );

    final newSendTx = tx.copyWith(
      amount: Amount.raw(totalAmountRaw),
      tx: newTx,
      utxos: txBuilder.selectedUtxos,
      change: txBuilder.change,
      baseFee: txBuilder.baseFee,
      priorityFee: txBuilder.priorityFee,
    );

    return newSendTx;
  } catch (e) {
    rethrow;
  }
});

class UtxosSelectionSummary extends HookConsumerWidget {
  final SendTx tx;
  const UtxosSelectionSummary({super.key, required this.tx});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    final pendingTx =
        ref.watch(selectionSummaryProvider((tx, tx.changeAddress!)));

    final spendableUtxos = ref.watch(spendableUtxosProvider);
    final symbol = ref.watch(kasSymbolProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Target Amount',
                style: styles.textStyleParagraph,
              ),
              Text(
                'Selected Amount',
                style: styles.textStyleParagraph,
              ),
              Text(
                'Selected UTXOs',
                style: styles.textStyleParagraph,
              ),
              Text(
                'Total fee',
                style: styles.textStyleParagraph,
              ),
              Text(
                'Change',
                style: styles.textStyleParagraph,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${tx.amount.value} $symbol',
                style: styles.textStyleParagraph,
              ),
              Text(
                '${pendingTx.amount.value} $symbol',
                style: styles.textStyleParagraph,
              ),
              Text(
                '${pendingTx.utxos.length} of ${spendableUtxos.length}',
                style: styles.textStyleParagraph,
              ),
              Text(
                '${pendingTx.fee.value} $symbol',
                style: styles.textStyleParagraph,
              ),
              Text(
                '${pendingTx.change.value}$symbol',
                style: styles.textStyleParagraph,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class UtxosSelectionPage extends HookConsumerWidget {
  final SendTx tx;
  const UtxosSelectionPage({
    super.key,
    required this.tx,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = l10nOf(context);

    Future<void> onConfirm() async {
      try {
        final addressNotifier = ref.read(addressNotifierProvider);
        final changeAddress = await addressNotifier.nextChangeAddress;
        final spendableUtxos = ref.read(spendableUtxosProvider);
        final selectedUtxos = ref.read(selectedUtxosProvider).toList();

        final txBuilder = TransactionBuilder(
          utxos: spendableUtxos,
          feePerInput: kFeePerInput,
          priorityFee: tx.priorityFee,
        );
        txBuilder.createUnsignedTransaction(
          toAddress: tx.toAddress,
          amountRaw: tx.amount.raw,
          preselectedUtxos: selectedUtxos,
          changeAddress: changeAddress.address,
        );
        appRouter.pop(context, withResult: selectedUtxos);
      } catch (e) {
        UIUtil.showSnackbar(l10n.utxoSelectionHint, context);
      }
    }

    return SheetWidget(
      title: l10n.utxoSelectionTitle,
      mainWidget: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          UtxosSelectionSummary(tx: tx),
          Expanded(child: UtxosWidget(selectionMode: true)),
        ],
      ),
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            PrimaryButton(
              title: l10n.confirm,
              onPressed: onConfirm,
            ),
            const SizedBox(height: 16),
            PrimaryOutlineButton(
              title: l10n.cancel,
              onPressed: () => appRouter.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
