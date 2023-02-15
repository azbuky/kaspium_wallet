import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../app_providers.dart';
import '../util/caseconverter.dart';
import '../widgets/dialog.dart';
import 'wallet_types.dart';

final walletItemProvider =
    Provider<WalletInfo>((ref) => throw UnimplementedError());

class WalletCard extends ConsumerWidget {
  const WalletCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = ref.watch(l10nProvider);

    final wallet = ref.watch(walletItemProvider);

    Future<void> selectWallet() async {
      final notifier = ref.read(walletBundleProvider.notifier);
      final network = ref.read(networkProvider);
      await notifier.selectWallet(wallet, network);

      Navigator.of(context).pushNamedAndRemoveUntil('/', (_) => false);
    }

    Future<void> removeWallet() async {
      final notifier = ref.read(walletBundleProvider.notifier);
      await notifier.removeWallet(wallet);
    }

    Future<void> checkAuth() async {
      final authUtil = ref.read(authUtilProvider);
      final auth = await authUtil.authenticate(
        context,
        l10n.removeWalletPinMessage,
        l10n.removeWalletBiometricsMessage,
      );
      if (auth) {
        await removeWallet();
      }
    }

    void areYouSureRemoveWallet() {
      AppDialogs.showConfirmDialog(
        context,
        l10n.areYouSure,
        l10n.removeWalletReassurance,
        l10n.YES,
        checkAuth,
      );
    }

    void confirmRemoveWallet() {
      AppDialogs.showConfirmDialog(
        context,
        CaseChange.toUpperCase(l10n.warning, ref),
        l10n.removeWalletDetail,
        l10n.removeWalletAction.toUpperCase(),
        areYouSureRemoveWallet,
      );
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 6),
      child: Slidable(
        endActionPane: ActionPane(
          extentRatio: 0.18,
          motion: const BehindMotion(),
          children: [
            SlidableAction(
              icon: Icons.delete,
              backgroundColor: theme.backgroundDark,
              foregroundColor: theme.text,
              onPressed: (_) => confirmRemoveWallet(),
            ),
          ],
        ),
        child: Container(
          child: TextButton(
            style: styles.darkCardButtonStyle,
            onPressed: selectWallet,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const SizedBox(width: 8),
                        Icon(
                          CupertinoIcons.creditcard,
                          size: 26,
                          color: theme.primary,
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Text(
                            wallet.name,
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            style: styles.textStyleParagraphBold.copyWith(
                                fontSize: 18, overflow: TextOverflow.ellipsis),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: theme.text30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
