import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'tx_welcome_card.dart';

class TransactionEmptyList extends ConsumerWidget {
  final String tokenSymbol;
  const TransactionEmptyList({
    Key? key,
    required this.tokenSymbol,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 15),
      children: [
        const TxWelcomeCard(),
      ],
    );
  }
}
