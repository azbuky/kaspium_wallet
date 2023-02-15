import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/action_button.dart';

class WalletActionButtons extends ConsumerWidget {
  const WalletActionButtons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, right: 14, bottom: 20),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: const ReceiveActionButton(),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 1,
            child: const SendActionButton(),
          ),
        ],
      ),
    );
  }
}
