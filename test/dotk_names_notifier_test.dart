import 'dart:async';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:kaspium_wallet/dotk/dotk_names_notifier.dart';
import 'package:kaspium_wallet/dotk/dotk_proof.dart';
import 'package:kaspium_wallet/dotk/dotk_registry.dart';
import 'package:kaspium_wallet/dotk/dotk_service.dart';
import 'package:kaspium_wallet/kaspa/api/json_client.dart';
import 'package:logger/logger.dart';
import 'package:retry/retry.dart';

import 'dotk_fake_node.dart';

const kBaseUrl = 'https://api.dotk.name/v1';
const kAddress =
    'kaspa:qpvtxyhfm0x63y97g2ktamen5ngpdmjwpslcf92quu5x5e5ag3uezpj2gt9km';
const kOtherAddress =
    'kaspa:qpsk3cj9pr4dmexwcuj37ma3nm2075ht2yara3xxk4twufmv7kd27vpczqyjd';

class FakeIndexer {
  final Map<String, List<String>> names;

  final requests = <String>[];

  int status = 200;

  FakeIndexer(this.names);

  late final service = DotkService(
    JsonClient(
      kBaseUrl,
      r: const RetryOptions(maxAttempts: 1, delayFactor: Duration.zero),
      minRequestGap: .zero,
      client: MockClient(_handle),
    ),
  );

  Future<http.Response> _handle(http.Request request) async {
    final address = request.url.pathSegments.last;
    requests.add(address);

    if (status != 200) {
      return http.Response('{"error":"boom"}', status);
    }

    return http.Response(
      json.encode({
        'ownerType': 0,
        'owner': 'abcd',
        'address': address,
        'names': names[address] ?? <String>[],
        'cards': <Object?>[],
        'registryCovenantId': DotkRegistry.mainnet.covenantId,
      }),
      200,
      headers: {'content-type': 'application/json'},
    );
  }
}

void main() {
  late FakeIndexer indexer;

  setUp(() {
    indexer = FakeIndexer({
      kAddress: ['coinbase', 'kaspa'],
      kOtherAddress: [],
    });
  });

  DotkNamesNotifier notifierOver(
    DotkService service, {
    DotkProver? Function() prover = provingEverything,
    Duration maxAge = const Duration(minutes: 10),
  }) {
    final notifier = DotkNamesNotifier(
      service,
      prover: prover,
      log: Logger(level: Level.off),
      maxAge: maxAge,
    );
    addTearDown(notifier.dispose);

    return notifier;
  }

  test('answers with the name once the lookup lands', () async {
    final notifier = notifierOver(indexer.service);

    expect(notifier.nameForAddress(kAddress), isNull);
    expect(notifier.isPending(kAddress), isTrue);

    await pumpEventQueue();

    expect(notifier.nameForAddress(kAddress), 'kaspa.k');
    expect(notifier.isPending(kAddress), isFalse);
    expect(indexer.requests, [kAddress]);
  });

  test('asks once for an address that is asked for repeatedly', () async {
    final notifier = notifierOver(indexer.service);

    notifier.nameForAddress(kAddress);
    notifier.nameForAddress(kAddress);
    notifier.nameForAddress(kAddress);
    await pumpEventQueue();

    notifier.nameForAddress(kAddress);
    await pumpEventQueue();

    expect(indexer.requests, [kAddress]);
  });

  test('notifies listeners when a lookup lands', () async {
    final notifier = notifierOver(indexer.service);

    var notified = 0;
    notifier.addListener(() => notified += 1);

    notifier.nameForAddress(kAddress);
    expect(notified, 0);

    await pumpEventQueue();

    expect(notified, 1);
  });

  test('remembers that an address owns no names', () async {
    final notifier = notifierOver(indexer.service);

    notifier.nameForAddress(kOtherAddress);
    await pumpEventQueue();

    expect(notifier.nameForAddress(kOtherAddress), isNull);
    await pumpEventQueue();

    expect(indexer.requests, [kOtherAddress]);
  });

  test('shows no name without a registry for the network', () async {
    final notifier = notifierOver(indexer.service, prover: () => null);

    notifier.nameForAddress(kAddress);
    await pumpEventQueue();

    expect(notifier.nameForAddress(kAddress), isNull);
  });

  test('does not hammer an indexer that failed', () async {
    indexer.status = 500;
    final notifier = notifierOver(indexer.service);

    notifier.nameForAddress(kAddress);
    await pumpEventQueue();

    expect(notifier.nameForAddress(kAddress), isNull);
    await pumpEventQueue();

    expect(indexer.requests, [kAddress]);
    expect(DotkNamesNotifier.kFailureMaxAge, const Duration(minutes: 1));
  });

  test('gives up on an indexer that does not answer', () async {
    final service = DotkService(
      JsonClient(
        kBaseUrl,
        r: const RetryOptions(maxAttempts: 1, delayFactor: Duration.zero),
        minRequestGap: .zero,
        client: MockClient((_) => Completer<http.Response>().future),
      ),
      timeout: const Duration(milliseconds: 50),
    );
    final notifier = notifierOver(service);
    var notified = 0;
    notifier.addListener(() => notified += 1);

    expect(notifier.nameForAddress(kAddress), isNull);
    await Future<void>.delayed(const Duration(milliseconds: 100));

    expect(notifier.isPending(kAddress), isFalse);
    expect(notified, 1);
    // Remembered as a failure, so the next build does not ask again.
    expect(notifier.nameForAddress(kAddress), isNull);
    await pumpEventQueue();
    expect(notifier.isPending(kAddress), isFalse);
  });

  test('asks again for an entry that went stale', () async {
    final notifier = notifierOver(indexer.service, maxAge: Duration.zero);

    notifier.nameForAddress(kAddress);
    await pumpEventQueue();

    expect(notifier.nameForAddress(kAddress), 'kaspa.k');
    await pumpEventQueue();

    expect(indexer.requests, [kAddress, kAddress]);
  });

  test('keeps a name it knows when a refresh fails', () async {
    final notifier = notifierOver(indexer.service, maxAge: Duration.zero);
    notifier.nameForAddress(kAddress);
    await pumpEventQueue();

    indexer.status = 500;
    notifier.nameForAddress(kAddress);
    await pumpEventQueue();

    expect(notifier.nameForAddress(kAddress), 'kaspa.k');
  });

  test('does nothing when lookups are turned off', () async {
    final notifier = notifierOver(DotkService.url(''));

    expect(notifier.nameForAddress(kAddress), isNull);
    expect(notifier.isPending(kAddress), isFalse);

    await pumpEventQueue();

    expect(notifier.nameForAddress(kAddress), isNull);
  });

  test('does not notify after it is disposed', () async {
    final notifier = DotkNamesNotifier(
      indexer.service,
      prover: provingEverything,
      log: Logger(level: Level.off),
    );

    notifier.nameForAddress(kAddress);
    notifier.dispose();

    await pumpEventQueue();

    expect(indexer.requests, [kAddress]);
  });
}
