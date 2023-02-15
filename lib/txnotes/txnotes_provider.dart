import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import '../database/database.dart';
import 'txnotes_notifier.dart';
import 'txnotes_types.dart';

final _txNotesBoxProvider = Provider((ref) {
  final db = ref.watch(dbProvider);

  final txNotesBox = db.getIndexedTypedBox<TxNote>(kTxNotesBox);

  return txNotesBox;
});

final txNotesProvider = Provider((ref) {
  final txNotesBox = ref.watch(_txNotesBoxProvider);

  return TxNotesNotifier(txNotesBox);
});

final txNoteProvider = Provider.family<TxNote?, String>((ref, txId) {
  final notes = ref.watch(txNotesProvider);

  return notes.getNoteForTxId(txId);
});
