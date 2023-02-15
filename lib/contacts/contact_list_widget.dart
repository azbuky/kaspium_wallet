import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'contacts_providers.dart';
import 'single_contact_widget.dart';

class ContactListWidget extends ConsumerWidget {
  const ContactListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contacts = ref.watch(contactsProvider).contacts;

    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        final contact = contacts[index];
        return SingleContactWidget(contact: contact);
      },
    );
  }
}
