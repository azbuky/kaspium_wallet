import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../contacts/contact.dart';

class ContactWidget extends ConsumerWidget {
  final Contact contact;
  final VoidCallback? onPressed;
  const ContactWidget({
    Key? key,
    required this.contact,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 42,
          width: double.infinity,
          child: TextButton(
            onPressed: onPressed,
            child: Text(
              contact.name,
              textAlign: TextAlign.center,
              style: styles.textStyleAddressPrimary,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          height: 1,
          color: theme.text03,
        ),
      ],
    );
  }
}
