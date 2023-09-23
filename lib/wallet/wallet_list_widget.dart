import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/gradient_widgets.dart';
import 'wallet_card.dart';
import 'wallet_providers.dart';

class WalletListWidget extends ConsumerWidget {
  const WalletListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wallets = ref.watch(walletsProvider) ?? IList([]);

    return Stack(children: [
      ListView.builder(
        padding: const EdgeInsets.only(top: 12, bottom: 16),
        itemCount: wallets.length,
        itemBuilder: (context, index) {
          final item = wallets[index];
          return ProviderScope(
            overrides: [
              walletItemProvider.overrideWithValue(item),
            ],
            child: const WalletCard(),
          );
        },
      ),
      const ListTopGradient(),
      const ListBottomGradient(),
    ]);
  }
}
