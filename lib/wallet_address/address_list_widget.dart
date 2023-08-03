import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/core_providers.dart';
import 'address_list_item.dart';
import 'address_providers.dart';

class ChangeAddressListWidget extends HookConsumerWidget {
  final ScrollController scrollController;

  const ChangeAddressListWidget({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    final addresses = ref.watch(reversedChangeAddressesProvider);

    useAutomaticKeepAlive();

    if (addresses.isEmpty) {
      return Column(children: [
        Text(
          'Change address list is empty',
          style: TextStyle(color: theme.text10),
        ),
      ]);
    }

    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 10),
      itemCount: addresses.length,
      controller: scrollController,
      itemBuilder: (context, index) {
        final account = addresses[index];
        return AccountListItem(address: account);
      },
      separatorBuilder: (context, index) {
        return Divider(height: 2, color: theme.text15);
      },
    );
  }
}

class ReceiveAddressListWidget extends HookConsumerWidget {
  final ScrollController scrollController;

  const ReceiveAddressListWidget({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    final addresses = ref.watch(reversedReceiveAddressesProvider);

    useAutomaticKeepAlive();

    if (addresses.isEmpty) {
      return Column(children: [
        Text(
          'Receive address list is empty',
          style: TextStyle(color: theme.text10),
        ),
      ]);
    }

    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 10),
      itemCount: addresses.length,
      controller: scrollController,
      itemBuilder: (context, index) {
        final account = addresses[index];
        return AccountListItem(address: account);
      },
      separatorBuilder: (context, index) {
        return Divider(height: 2, color: theme.text15);
      },
    );
  }
}
