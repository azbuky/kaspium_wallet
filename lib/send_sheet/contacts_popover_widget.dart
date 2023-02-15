import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../contacts/contact.dart';
import 'contact_widget.dart';

typedef ContactSelectionCallback = void Function(Contact contact);

class ContactsPopoverWidget extends ConsumerWidget {
  final List<Contact> contacts;
  final ContactSelectionCallback callback;

  const ContactsPopoverWidget({
    Key? key,
    required this.contacts,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    return Container(
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.105,
        right: MediaQuery.of(context).size.width * 0.105,
      ),
      alignment: Alignment.bottomCenter,
      constraints: const BoxConstraints(
        maxHeight: 174,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: theme.backgroundDarkest,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            margin: EdgeInsets.only(bottom: 50),
            child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.only(bottom: 0, top: 0),
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                final contact = contacts[index];
                return ContactWidget(
                  contact: contact,
                  onPressed: () => callback(contact),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
