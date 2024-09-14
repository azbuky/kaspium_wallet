import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../send_sheet/send_note_widget.dart';
import '../widgets/address_card.dart';
import '../widgets/address_widgets.dart';
import '../widgets/amount_label.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/txid_card.dart';
import 'transaction_types.dart';

class TransactionDetails extends ConsumerWidget {
  final TxItem txItem;

  const TransactionDetails({
    super.key,
    required this.txItem,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final output = txItem.tx.apiTx.outputs[txItem.outputIndex];
    final amountRaw = output.amount;
    final amount = Amount.raw(BigInt.from(amountRaw));

    final address = Address.decodeAddress(output.scriptPublicKeyAddress);
    final txId = txItem.tx.id;
    final note = ref.watch(txNoteProvider(txId))?.note;
    final title = switch (txItem.type) {
      TxItemType.send => l10n.sent.toUpperCase(),
      TxItemType.receive => l10n.received.toUpperCase(),
      TxItemType.thisWallet =>
        l10n.thisWallet.replaceAll('#', '').toUpperCase(),
      TxItemType.compound => l10n.compoundUppercased,
    };
    final addressTitle = switch (txItem.type) {
      TxItemType.send => l10n.toAddress.toUpperCase(),
      TxItemType.receive ||
      TxItemType.thisWallet ||
      TxItemType.compound =>
        l10n.walletAddress.toUpperCase(),
    };

    return Stack(
      fit: StackFit.loose,
      children: [
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  title,
                  style: styles.textStyleSubHeader,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                ),
              ),
              if (txItem.pending)
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    l10n.txPendingMessage,
                    style: styles.textStyleAddressPrimary,
                  ),
                ),
              const SizedBox(height: 10),
              AmountLabel(amount: amount),
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 10),
                alignment: Alignment.center,
                child: Text(
                  addressTitle,
                  style: styles.textStyleSubHeader,
                ),
              ),
              AddressCard(
                address: address,
                type: AddressTextType.PRIMARY,
              ),
              const SizedBox(height: 30),
              TxIdCard(txId: txId),
              if (note != null)
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 20),
                  child: SendNoteWidget(note: note),
                ),
            ],
          ),
        ),
        const ListTopGradient(),
        const ListBottomGradient(),
      ],
    );
  }
}
