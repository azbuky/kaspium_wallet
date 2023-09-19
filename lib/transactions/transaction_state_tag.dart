import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../l10n/l10n.dart';
import 'transaction_types.dart';

class TransactionStateTag extends ConsumerWidget {
  final TxState state;

  const TransactionStateTag({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    return Container(
      padding: EdgeInsetsDirectional.fromSTEB(6, 2, 6, 2),
      decoration: BoxDecoration(
        color: theme.text10,
        borderRadius: BorderRadius.circular(4),
      ),
      child: state.when(
        unknown: () => Text(
          l10n.unknown,
          style: styles.tagText,
        ),
        unconfirmed: () => Text(
          l10n.notAccepted,
          style: styles.tagText,
        ),
        confirming: (confirmations) {
          if (confirmations < BigInt.two) {
            return Text(
              l10n.accepted,
              style: styles.tagText,
            );
          }
          return Text(
            l10n.confirmations(confirmations.toString()),
            style: styles.tagText,
          );
        },
        confirmed: () => Text(
          l10n.confirmed,
          style: styles.tagText,
        ),
      ),
    );
  }
}
