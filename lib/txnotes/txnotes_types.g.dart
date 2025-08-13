// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'txnotes_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TxNote _$TxNoteFromJson(Map json) =>
    _TxNote(txId: json['txId'] as String, note: json['note'] as String);

Map<String, dynamic> _$TxNoteToJson(_TxNote instance) => <String, dynamic>{
  'txId': instance.txId,
  'note': instance.note,
};
