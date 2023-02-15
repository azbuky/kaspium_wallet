import '../database/boxes.dart';
import '../util/safe_change_notifier.dart';
import 'txnotes_types.dart';

class TxNotesNotifier extends SafeChangeNotifier {
  final IndexedTypedBox<TxNote> txNotesBox;
  final Map<String, TxNote> txNotesCache = {};

  TxNotesNotifier(this.txNotesBox) {
    final notes = txNotesBox.getAll();

    for (final txNote in notes) {
      txNotesCache[txNote.txId] = txNote;
    }
  }

  TxNote? getNoteForTxId(String txId) {
    return txNotesCache[txId];
  }

  void addNoteForTxId(String txId, String note) {
    final txNote = TxNote(
      txId: txId,
      note: note,
    );

    txNotesBox.add(txNote);
    txNotesCache[txId] = txNote;

    notifyListeners();
  }
}
