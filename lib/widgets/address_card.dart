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
  final VoidCallback? onPressed;

  /// Shown instead of the contact, address or `.k` name label.
  final String? label;
  final bool labelProven;

  const AddressCard({
    super.key,
    required this.address,
    this.showLabel = true,
    this.type = .PRIMARY,
    this.onPressed,
    this.label,
    this.labelProven = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final dotkName = showLabel
        ? ref.watch(dotkNameForAddressProvider(address.encoded))
        : null;

    final localLabel = useMemoized(() {
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

    // A contact or an address label the user set wins over the name the
    // registry knows the address by
    final shownLabel = label ?? localLabel ?? (showLabel ? dotkName : null);

    final horizontal = MediaQuery.widthOf(context) * 0.105;

    final content = Padding(
      padding: const .symmetric(horizontal: 25, vertical: 15),
      child: AddressThreeLineText(
        address: address.encoded,
        label: shownLabel,
        labelProven: labelProven,
        type: type,
      ),
    );

    return Container(
      margin: .symmetric(horizontal: horizontal),
      width: .infinity,
      decoration: BoxDecoration(
        color: theme.backgroundDarkest,
        borderRadius: .circular(25),
      ),
      child: switch (onPressed) {
        final onPressed? => TextButton(
          style: styles.fieldCardButtonStyle,
          onPressed: onPressed,
          child: content,
        ),
        null => content,
      },
    );
  }
}
