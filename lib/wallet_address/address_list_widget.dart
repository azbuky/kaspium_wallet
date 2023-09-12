import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/core_providers.dart';
import 'address_list_item.dart';
import 'wallet_address_providers.dart';
import 'wallet_address.dart';

class AddressListWidget extends HookConsumerWidget {
  final AddressType addressType;
  final String emptyDescription;
  final ScrollController scrollController;

  const AddressListWidget({
    super.key,
    required this.addressType,
    required this.emptyDescription,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    final addresses = ref.watch(filteredAddressesOfTypeProvider(addressType));

    useAutomaticKeepAlive();

    if (addresses.isEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              emptyDescription,
              style: TextStyle(color: theme.text10),
            ),
          ),
        ],
      );
    }

    final items = addresses.unlockView.reversed;

    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 10),
      itemCount: items.length,
      controller: scrollController,
      itemBuilder: (context, index) {
        final address = items.elementAt(index);
        return AddressListItem(address: address);
      },
      separatorBuilder: (context, index) {
        return Divider(height: 2, color: theme.text15);
      },
    );
  }
}
