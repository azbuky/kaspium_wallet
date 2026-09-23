import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:kaspium_wallet/dotk/dotk_subname.dart';
import 'package:kaspium_wallet/kaspa/utils.dart';

/// A payload that is a point on the curve.
const kSchnorrPayload =
    '4f355bdcb7cc0af728ef3cceb9615d90684bb5b2ca5f859ab0f0b704075871aa';

/// The field prime, one over the largest valid x.
const kFieldPrime =
    'fffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffc2f';

Uint8List opaque(String hex) => hexToBytes(hex);

void main() {
  group('payee', () {
    // Both parities of any x are points, so a swapped ECDSA mapping still
    // builds a valid address and only a fixed expected string catches it
    test('reads a schnorr payee', () {
      expect(
        DotkSubname.payee(opaque('582100$kSchnorrPayload'), .kaspa),
        'kaspa:qp8n2k7uklxq4aegau7vawtptkgxsja4kt99lpv6krctwpq8tpc6547zhh9u4',
      );
    });

    test('reads an ECDSA payee with an even y', () {
      expect(
        DotkSubname.payee(opaque('582186${'33' * 32}'), .kaspaSim),
        'kaspasim:qyprxvenxvenxvenxvenxvenxvenxvenxvenxvenxvenxvenxvenxvca3cz5km7',
      );
    });

    test('reads an ECDSA payee with an odd y', () {
      expect(
        DotkSubname.payee(opaque('582185${'44' * 32}'), .kaspaDev),
        'kaspadev:qyp5g3zyg3zyg3zyg3zyg3zyg3zyg3zyg3zyg3zyg3zyg3zyg3zyg3qucd5dser',
      );
    });

    test('reads a P2SH payee', () {
      expect(
        DotkSubname.payee(opaque('582103${'22' * 32}'), .kaspaTest),
        'kaspatest:pq3zyg3zyg3zyg3zyg3zyg3zyg3zyg3zyg3zyg3zyg3zyg3zyg3zyxccxflal',
      );
    });

    test('refuses a payload that is not a point', () {
      expect(DotkSubname.payee(opaque('582100${'ff' * 32}'), .kaspa), isNull);
      expect(DotkSubname.payee(opaque('582186${'ff' * 32}'), .kaspa), isNull);
      // The field prime itself, which a range check off by one lets through
      expect(DotkSubname.payee(opaque('582100$kFieldPrime'), .kaspa), isNull);
    });

    test('a script hash is not a key, so no curve test applies to it', () {
      expect(
        DotkSubname.payee(opaque('582103${'ff' * 32}'), .kaspa),
        isNotNull,
      );
    });

    test('refuses a zero payload', () {
      // Under the key schemes the curve test already refuses it, so a script
      // hash is where the zero test does the work
      expect(DotkSubname.payee(opaque('582103${'00' * 32}'), .kaspa), isNull);
      expect(DotkSubname.payee(opaque('582100${'00' * 32}'), .kaspa), isNull);
    });

    test('refuses a covenant id, which no reader can pay', () {
      expect(
        DotkSubname.payee(opaque('582104$kSchnorrPayload'), .kaspa),
        isNull,
      );
    });

    test('refuses a scheme it does not know', () {
      // 0x02 is the SEC1 prefix of an even key, and the likeliest confusion
      expect(
        DotkSubname.payee(opaque('582102$kSchnorrPayload'), .kaspa),
        isNull,
      );
      expect(
        DotkSubname.payee(opaque('582101$kSchnorrPayload'), .kaspa),
        isNull,
      );
    });

    test('refuses an item that is not the 35-byte byte string', () {
      expect(
        DotkSubname.payee(opaque('582100${kSchnorrPayload}00'), .kaspa),
        isNull,
      );
      expect(DotkSubname.payee(opaque('5820${'11' * 32}'), .kaspa), isNull);
      // The right length under the wrong head, which the length test alone
      // would let through
      expect(
        DotkSubname.payee(opaque('402100$kSchnorrPayload'), .kaspa),
        isNull,
      );
      // 35 bytes whose own header declares 32 of them, over a payee that is
      // otherwise good
      expect(
        DotkSubname.payee(opaque('582000$kSchnorrPayload'), .kaspa),
        isNull,
      );
      expect(
        DotkSubname.payee(opaque('59002100$kSchnorrPayload'), .kaspa),
        isNull,
      );
      expect(DotkSubname.payee(opaque(''), .kaspa), isNull);
    });

    test('refuses a value that is not an opaque item', () {
      expect(DotkSubname.payee('kaspa:qqq', .kaspa), isNull);
      expect(DotkSubname.payee(true, .kaspa), isNull);
      expect(DotkSubname.payee(null, .kaspa), isNull);
    });
  });

  test('recordKey puts the label behind the prefix', () {
    expect(DotkSubname.recordKey('bob'), 'sub:bob');
    expect(DotkSubname.recordKey('dev.team'), 'sub:dev.team');
  });
}
