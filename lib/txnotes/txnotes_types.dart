import 'package:freezed_annotation/freezed_annotation.dart';

part 'txnotes_types.freezed.dart';
part 'txnotes_types.g.dart';

@freezed
class TxNote with _$TxNote {
  const factory TxNote({
    required String txId,
    required String note,
  }) = _TxNote;

  factory TxNote.fromJson(Map<String, dynamic> json) => _$TxNoteFromJson(json);
}
