import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import '../kaspa/kaspa.dart';
import 'contact.dart';
import 'contacts_notifier.dart';

final contactsBoxProvider = Provider((ref) {
  final db = ref.watch(dbProvider);
  return db.getTypedBox<Contact>(db.contactsBox);
});

final contactsProvider = ChangeNotifierProvider((ref) {
  final network = ref.watch(networkProvider);
  final contactsBox = ref.watch(contactsBoxProvider);
  final sharedPrefsUtil = ref.watch(sharedPrefsUtilProvider);

  final prefix = addressPrefixForNetwork(network).toString() + ':';

  return ContactsNotifier(contactsBox, sharedPrefsUtil, prefix: prefix);
});
