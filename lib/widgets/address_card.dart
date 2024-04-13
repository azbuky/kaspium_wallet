import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../kaspa/kaspa.dart';
import 'address_widgets.dart';

class AddressCard extends HookConsumerWidget {
  final Address address;
  final bool showLabel;
  final AddressTextType type;

  const AddressCard({
    Key? key,
    required this.address,
    this.showLabel = true,
    this.type = AddressTextType.PRIMARY,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    final label = useMemoized(() {
      if (!showLabel) return null;

      final contacts = ref.read(contactsProvider);
      final contact = contacts.getContactWithAddress(
        address.encoded,
        includeLabels: true,
      );
      if (contact == null) {
        final addressNotifier = ref.read(addressNotifierProvider);
        final addressLabel = addressNotifier.nameForAddress(address.encoded);
        if (addressLabel != null) {
          return addressLabel;
        }
      }

      return contact?.name;
    }, [address, showLabel]);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.105,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.backgroundDarkest,
        borderRadius: BorderRadius.circular(25),
      ),
      child: AddressThreeLineText(
        address: address.encoded,
        label: label,
        type: type,
      ),
    );
  }
}
