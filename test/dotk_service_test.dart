import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:kaspium_wallet/dotk/dotk_records.dart';
import 'package:kaspium_wallet/dotk/dotk_service.dart';
import 'package:kaspium_wallet/kaspa/api/json_client.dart';
import 'package:kaspium_wallet/kaspa/utils.dart';
import 'package:retry/retry.dart';

const kBaseUrl = 'https://api.dotk.name/v1';
const kAddress =
    'kaspa:qpvtxyhfm0x63y97g2ktamen5ngpdmjwpslcf92quu5x5e5ag3uezpj2gt9km';
const kRegistry =
    'ee2128c03dfac7f6d74734bb3c879bd999434c47a55945b8a6daae2a1e4a21de';
const kSpender =
    '4f355bdcb7cc0af728ef3cceb9615d90684bb5b2ca5f859ab0f0b704075871aa';

http.Response _json(Object? body, [int status = 200]) => http.Response(
  json.encode(body),
  status,
  headers: {'content-type': 'application/json'},
);

http.Response _notFound() =>
    _json({'code': 'not_found', 'error': 'not registered'}, 404);

void main() {
  final paths = <String>[];

  setUp(paths.clear);

  DotkService serviceOver(
    Future<http.Response> Function(http.Request request) handle,
  ) => DotkService(
    JsonClient(
      kBaseUrl,
      r: const RetryOptions(maxAttempts: 1, delayFactor: Duration.zero),
      minRequestGap: .zero,
      client: MockClient((request) {
        paths.add(request.url.path);
        return handle(request);
      }),
    ),
  );

  DotkService serviceAnswering(Map<String, Object?> body, [int status = 200]) =>
      serviceOver((_) async => _json(body, status));

  group('url', () {
    test('is disabled without a url', () {
      expect(DotkService.url('').isEnabled, isFalse);
      expect(DotkService.url('   ').isEnabled, isFalse);
    });

    test('drops trailing slashes from the base url', () {
      expect(DotkService.url('$kBaseUrl/').baseUrl, kBaseUrl);
      expect(DotkService.url('$kBaseUrl///').baseUrl, kBaseUrl);
      expect(DotkService.url(' $kBaseUrl/ ').baseUrl, kBaseUrl);
      expect(DotkService.url(kBaseUrl).baseUrl, kBaseUrl);
    });

    test('is enabled with a url', () {
      expect(DotkService.url(kBaseUrl).isEnabled, isTrue);
    });
  });

  Map<String, Object?> card({
    String name = 'alice',
    Map<String, Object?>? records,
    int spenderType = 0,
    String spender = kSpender,
    String blob = 'a0',
    bool live = true,
  }) => {
    'name': name,
    'spenderType': spenderType,
    'spender': spender,
    'blob': blob,
    'records': ?records,
    'live': live,
  };

  group('claimName', () {
    Map<String, Object?> answer({
      String name = 'kaspa',
      Object? address = kAddress,
      Map<String, Object?>? card,
    }) => {
      'name': name,
      'ownerType': address == null ? 4 : 0,
      'address': ?address,
      'card': ?card,
      'registryCovenantId': kRegistry,
    };

    test('claims a registered name', () async {
      final service = serviceAnswering(answer());

      final claim = await service.claimName('kaspa');

      expect(paths, ['/v1/names/kaspa']);
      expect(claim?.target, 'kaspa');
      expect(claim?.address, kAddress);
      expect(claim?.registryCovenantId, kRegistry);
      expect(claim?.card, isNull);
    });

    test(
      'claims a subname with its parent card, asking for the parent',
      () async {
        final service = serviceAnswering(
          answer(
            name: 'alice',
            card: card(blob: 'a1', spenderType: 0x86),
          ),
        );

        final claim = await service.claimName('bob.alice');

        expect(paths, ['/v1/names/alice']);
        expect(claim?.target, 'bob.alice');
        expect(claim?.card?.spenderType, 0x86);
        expect(claim?.card?.spender.hex, kSpender);
        expect(claim?.card?.blob.hex, 'a1');
      },
    );

    test('does not ask about an invalid name, label or parent', () async {
      final service = serviceAnswering(const {});

      expect(await service.claimName('-kaspa'), isNull);
      expect(await service.claimName(''), isNull);
      expect(await service.claimName('a' * 33), isNull);
      expect(await service.claimName('bob.-alice'), isNull);
      // A label under the suffix segment, which would otherwise read the name
      // `k` for every doubled-suffix typo
      expect(await service.claimName('bob.k'), isNull);
      expect(await service.claimName('-bob.alice'), isNull);
      expect(await service.claimName('${'z' * 65}.alice'), isNull);
      expect(paths, isEmpty);
    });

    test('answers null for a name that is not registered', () async {
      final service = serviceOver((_) async => _notFound());

      expect(await service.claimName('kaspa'), isNull);
      expect(paths, ['/v1/names/kaspa']);
    });

    test('answers null for a malformed name the api rejects', () async {
      final service = serviceAnswering({'code': 'invalid_name'}, 400);

      expect(await service.claimName('kaspa'), isNull);
    });

    test('answers null when a covenant owns the name', () async {
      final service = serviceAnswering(answer(address: null, card: card()));

      expect(await service.claimName('kaspa'), isNull);
      expect(await service.claimName('bob.kaspa'), isNull);
    });

    test('answers null for a subname whose parent has no card', () async {
      final service = serviceAnswering(answer(name: 'alice'));

      expect(await service.claimName('bob.alice'), isNull);
    });

    test('rethrows a server error', () async {
      final service = serviceAnswering({'error': 'boom'}, 500);

      await expectLater(
        service.claimName('kaspa'),
        throwsA(isA<ApiException>()),
      );
    });

    test('fails a lookup with an unexpected shape', () async {
      for (final body in [
        ['kaspa'],
        {'address': 42, 'registryCovenantId': kRegistry},
        answer()..remove('registryCovenantId'),
        answer(card: card(blob: 'abc')),
        answer(card: card(blob: 'zz')),
        answer(card: card(blob: 'a0' * (DotkRecords.blobMaxLength + 1))),
      ]) {
        final service = serviceOver((_) async => _json(body));

        await expectLater(
          service.claimName('kaspa'),
          throwsA(isA<FormatException>()),
          reason: '$body',
        );
      }
    });
  });

  group('claimAddress', () {
    Map<String, Object?> answer(
      List<String> names, [
      List<Map<String, Object?>> cards = const [],
    ]) => {
      'ownerType': 0,
      'address': kAddress,
      'names': names,
      'cards': cards,
      'registryCovenantId': kRegistry,
    };

    test('orders names by display order', () async {
      final service = serviceAnswering(answer(['coinbase', 'kaspa', 'x']));

      final claim = await service.claimAddress(kAddress);

      expect(paths, ['/v1/addresses/$kAddress']);
      expect(claim?.names, ['x', 'kaspa', 'coinbase']);
      expect(claim?.primaryCards, isEmpty);
      expect(claim?.registryCovenantId, kRegistry);
    });

    test('collects every primary card', () async {
      final service = serviceAnswering(
        answer(
          ['coinbase', 'kaspa', 'x'],
          [
            card(name: 'coinbase', records: {'primary': true}),
            card(name: 'kaspa', records: {'primary': true}, blob: 'a1'),
            card(name: 'x', records: {'url': 'https://kaspa.org'}),
          ],
        ),
      );

      final claim = await service.claimAddress(kAddress);

      expect(claim?.primaryCards.keys, ['coinbase', 'kaspa']);
      expect(claim?.primaryCards['kaspa']?.blob.hex, 'a1');
    });

    test('answers null for an address without names', () async {
      final service = serviceAnswering(answer([]));

      expect(await service.claimAddress(kAddress), isNull);
    });

    test('answers null for an address the api rejects', () async {
      final service = serviceAnswering({'code': 'invalid_address'}, 400);

      expect(await service.claimAddress(kAddress), isNull);
    });

    test('rethrows a server error', () async {
      final service = serviceAnswering({'error': 'boom'}, 500);

      await expectLater(
        service.claimAddress(kAddress),
        throwsA(isA<ApiException>()),
      );
    });

    test('fails a lookup with an unexpected shape', () async {
      final service = serviceAnswering({'names': 'kaspa'});

      await expectLater(
        service.claimAddress(kAddress),
        throwsA(isA<FormatException>()),
      );
    });
  });
}
