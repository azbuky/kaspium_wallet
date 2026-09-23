import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:kaspium_wallet/dotk/dotk_name_resolver.dart';
import 'package:kaspium_wallet/dotk/dotk_proof.dart';
import 'package:kaspium_wallet/dotk/dotk_registry.dart';
import 'package:kaspium_wallet/dotk/dotk_service.dart';
import 'package:kaspium_wallet/dotk/dotk_types.dart';
import 'package:kaspium_wallet/kaspa/api/json_client.dart';
import 'package:logger/logger.dart';
import 'package:retry/retry.dart';

import 'dotk_fake_node.dart';

const kBaseUrl = 'https://api.dotk.name/v1';
const kAddress =
    'kaspa:qpvtxyhfm0x63y97g2ktamen5ngpdmjwpslcf92quu5x5e5ag3uezpj2gt9km';

class FakeIndexer {
  final names = <String>[];

  Duration delay = Duration.zero;
  int status = 200;
  bool offline = false;
  String? address = kAddress;

  int get requests => names.length;

  late final service = DotkService(
    JsonClient(
      kBaseUrl,
      r: const RetryOptions(maxAttempts: 1, delayFactor: Duration.zero),
      minRequestGap: .zero,
      client: MockClient(_handle),
    ),
  );

  Future<http.Response> _handle(http.Request request) async {
    names.add(request.url.pathSegments.last);

    if (delay > Duration.zero) {
      await Future<void>.delayed(delay);
    }
    if (offline) {
      throw http.ClientException('No route to host', request.url);
    }
    if (status != 200) {
      return http.Response('{"code":"not_found"}', status);
    }

    return http.Response(
      json.encode({
        'name': names.last,
        'ownerType': 0,
        'owner': 'abcd',
        'address': address,
        'registryCovenantId': DotkRegistry.mainnet.covenantId,
      }),
      200,
      headers: {'content-type': 'application/json'},
    );
  }
}

typedef Call = ({String name, DotkLookup? lookup});

void main() {
  late FakeIndexer indexer;
  late List<Call> calls;

  setUp(() {
    indexer = FakeIndexer();
    calls = [];
  });

  DotkNameResolver resolverOver(
    DotkService service, {
    DotkProver? Function() prover = provingEverything,
    Duration timeout = DotkNameResolver.kTimeout,
  }) => DotkNameResolver(
    service: () => service,
    prover: prover,
    onLookup: (name, lookup) => calls.add((name: name, lookup: lookup)),
    timeout: timeout,
    log: Logger(level: Level.off),
  );

  Future<void> afterDebounce() =>
      Future<void>.delayed(DotkNameResolver.kDebounce * 2);

  group('textChanged', () {
    test('resolves once for a burst of keystrokes', () async {
      final resolver = resolverOver(indexer.service);
      addTearDown(resolver.dispose);

      resolver.textChanged('kas');
      resolver.textChanged('kaspa.');
      resolver.textChanged('kaspa.k');
      resolver.textChanged('Kaspa.k ');

      expect(indexer.requests, 0);
      await afterDebounce();

      expect(indexer.names, ['kaspa']);
      expect(calls.map((call) => call.name), ['kaspa', 'kaspa']);
      expect(calls.first.lookup, isNull);
      expect(calls.last.lookup?.status, DotkLookupStatus.resolved);
      expect(resolver.resolved?.address, kAddress);
    });

    test('asks nothing when the text is not a name', () async {
      final resolver = resolverOver(indexer.service);
      addTearDown(resolver.dispose);

      resolver.textChanged('kaspa');
      resolver.textChanged(kAddress);
      resolver.textChanged('@KaspiumTeam');
      await afterDebounce();

      expect(indexer.requests, 0);
      expect(calls, isEmpty);
      expect(resolver.resolved, isNull);
    });

    test('forgets the result when the text holds another name', () async {
      final resolver = resolverOver(indexer.service);
      addTearDown(resolver.dispose);

      await resolver.resolve('kaspa.k');
      expect(resolver.resolved, isNotNull);

      resolver.textChanged('KASPA.k');
      expect(resolver.resolved, isNotNull);

      resolver.textChanged('kaspa.kk');
      expect(resolver.resolved, isNull);
    });

    test('shows a result only for the name the field holds', () async {
      final resolver = resolverOver(indexer.service);
      addTearDown(resolver.dispose);

      await resolver.resolve('kaspa.k');

      expect(resolver.resolvedFor(' Kaspa.k'), isNotNull);
      expect(resolver.resolvedFor(kAddress), isNull);

      final refresh = resolver.resolve('kaspa.k', refresh: true);
      expect(resolver.resolvedFor('kaspa.k'), isNull);
      await refresh;
    });
  });

  group('resolve', () {
    test('answers null when the text is not a name', () async {
      final resolver = resolverOver(indexer.service);
      addTearDown(resolver.dispose);

      expect(await resolver.resolve('kaspa'), isNull);
      expect(indexer.requests, 0);
    });

    test('shares a lookup that is still in flight', () async {
      indexer.delay = const Duration(milliseconds: 100);
      final resolver = resolverOver(indexer.service);
      addTearDown(resolver.dispose);

      final results = await Future.wait([
        resolver.resolve('kaspa.k'),
        resolver.resolve('Kaspa.K'),
      ]);

      expect(indexer.requests, 1);
      expect(results.last?.status, DotkLookupStatus.resolved);
      expect(resolver.resolved?.display, 'kaspa.k');
    });

    test('reuses a lookup that already finished', () async {
      final resolver = resolverOver(indexer.service);
      addTearDown(resolver.dispose);

      await resolver.resolve('kaspa.k');
      await resolver.resolve('kaspa.k');

      expect(indexer.requests, 1);
    });

    test('asks the indexer again when refreshing', () async {
      final resolver = resolverOver(indexer.service);
      addTearDown(resolver.dispose);

      await resolver.resolve('kaspa.k');
      await resolver.resolve('kaspa.k', refresh: true);

      expect(indexer.requests, 2);
    });

    test('reports only the lookup a newer one supersedes', () async {
      indexer.delay = const Duration(milliseconds: 100);
      final resolver = resolverOver(indexer.service);
      addTearDown(resolver.dispose);

      final first = resolver.resolve('kaspa.k');
      final second = resolver.resolve('coinbase.k');

      // The caller still gets its answer, but the field is not told.
      expect((await first)?.status, DotkLookupStatus.resolved);
      expect((await second)?.status, DotkLookupStatus.resolved);
      expect(indexer.names, ['kaspa', 'coinbase']);
      expect(calls.map((call) => call.name), [
        'kaspa',
        'coinbase',
        'coinbase',
      ]);
    });

    test('reports a name the indexer does not know', () async {
      indexer.status = 404;
      final resolver = resolverOver(indexer.service);
      addTearDown(resolver.dispose);

      final lookup = await resolver.resolve('kaspa.k');

      expect(lookup?.status, DotkLookupStatus.notRegistered);
      expect(lookup?.resolution, isNull);
      expect(resolver.resolved, isNull);
    });

    test('reports a name the node does not confirm, and asks again', () async {
      for (final prover in [
        () => DotkProver(FakeNode(), registry: .mainnet, prefix: .kaspa),
        () => null,
      ]) {
        indexer.names.clear();
        final resolver = resolverOver(indexer.service, prover: prover);
        addTearDown(resolver.dispose);

        final lookup = await resolver.resolve('kaspa.k');
        await resolver.resolve('kaspa.k');

        expect(lookup?.status, DotkLookupStatus.unconfirmed);
        expect(resolver.resolved, isNull);
        expect(indexer.requests, 2);
      }
    });

    test('fails when the lookup times out', () async {
      indexer.delay = const Duration(milliseconds: 200);
      final resolver = resolverOver(
        indexer.service,
        timeout: const Duration(milliseconds: 50),
      );
      addTearDown(resolver.dispose);

      final lookup = await resolver.resolve('kaspa.k');

      expect(lookup?.status, DotkLookupStatus.failed);
      expect(resolver.resolved, isNull);
    });

    test('fails when the network is down', () async {
      indexer.offline = true;
      final resolver = resolverOver(indexer.service);
      addTearDown(resolver.dispose);

      expect(
        (await resolver.resolve('kaspa.k'))?.status,
        DotkLookupStatus.failed,
      );
    });

    test('asks again after a failure', () async {
      indexer.offline = true;
      final resolver = resolverOver(indexer.service);
      addTearDown(resolver.dispose);

      expect(
        (await resolver.resolve('kaspa.k'))?.status,
        DotkLookupStatus.failed,
      );

      indexer.offline = false;
      expect(
        (await resolver.resolve('kaspa.k'))?.status,
        DotkLookupStatus.resolved,
      );
      expect(indexer.requests, 2);
    });

    test('is unavailable when lookups are turned off', () async {
      final resolver = resolverOver(DotkService.url(''));
      addTearDown(resolver.dispose);

      final lookup = await resolver.resolve('kaspa.k');

      expect(lookup?.status, DotkLookupStatus.unavailable);
      expect(resolver.resolved, isNull);
    });
  });

  group('resolveForSend', () {
    const kOtherAddress =
        'kaspa:qpsk3cj9pr4dmexwcuj37ma3nm2075ht2yara3xxk4twufmv7kd27vpczqyjd';

    test('pays what the name resolves to now', () async {
      final resolver = resolverOver(indexer.service);
      addTearDown(resolver.dispose);
      await resolver.resolve('kaspa.k');

      indexer.address = kOtherAddress;
      final lookup = await resolver.resolveForSend(
        'kaspa.k',
        current: () => 'kaspa.k',
      );

      expect(lookup?.resolution?.address, kOtherAddress);
    });

    test('answers null when the field changed meanwhile', () async {
      final resolver = resolverOver(indexer.service);
      addTearDown(resolver.dispose);
      var field = 'kaspa.k';
      indexer.delay = const Duration(milliseconds: 50);

      final lookup = resolver.resolveForSend('kaspa.k', current: () => field);
      field = 'coinbase.k';

      expect(await lookup, isNull);
    });
  });

  group('dispose', () {
    test('cancels a pending debounce', () async {
      final resolver = resolverOver(indexer.service);

      resolver.textChanged('kaspa.k');
      resolver.dispose();
      await afterDebounce();

      expect(indexer.requests, 0);
      expect(calls, isEmpty);
    });

    test('drops a lookup still in flight', () async {
      indexer.delay = const Duration(milliseconds: 100);
      final resolver = resolverOver(indexer.service);

      final lookup = resolver.resolve('kaspa.k');
      resolver.dispose();

      expect(await lookup, isNull);
      expect(calls.map((call) => call.lookup), [isNull]);
    });

    test('ignores text after it', () async {
      final resolver = resolverOver(indexer.service);
      resolver.dispose();

      resolver.textChanged('kaspa.k');
      expect(await resolver.resolve('kaspa.k'), isNull);
      await afterDebounce();

      expect(indexer.requests, 0);
    });
  });
}
