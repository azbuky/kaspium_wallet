import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:kaspium_wallet/contacts/contact.dart';
import 'package:kaspium_wallet/contacts/contacts_notifier.dart';
import 'package:kaspium_wallet/contacts/contacts_providers.dart';
import 'package:kaspium_wallet/core/core_providers.dart';
import 'package:kaspium_wallet/dotk/dotk_names_notifier.dart';
import 'package:kaspium_wallet/dotk/dotk_providers.dart';
import 'package:kaspium_wallet/dotk/dotk_registry.dart';
import 'package:kaspium_wallet/dotk/dotk_service.dart';
import 'package:kaspium_wallet/kaspa/api/json_client.dart';
import 'package:kaspium_wallet/kaspa/kaspa.dart';
import 'package:kaspium_wallet/l10n/app_localizations/app_localizations.dart';
import 'package:kaspium_wallet/send_sheet/account_address_widget.dart';
import 'package:kaspium_wallet/settings/available_themes.dart';
import 'package:kaspium_wallet/wallet_address/wallet_address.dart';
import 'package:kaspium_wallet/wallet_address/wallet_address_notifier.dart';
import 'package:kaspium_wallet/wallet_address/wallet_address_providers.dart';
import 'package:kaspium_wallet/widgets/address_card.dart';
import 'package:retry/retry.dart';

import 'dotk_fake_node.dart';

const kBaseUrl = 'https://api.dotk.name/v1';
const kAddress =
    'kaspa:qpvtxyhfm0x63y97g2ktamen5ngpdmjwpslcf92quu5x5e5ag3uezpj2gt9km';

class _NoContacts extends ChangeNotifier implements ContactsNotifier {
  @override
  Contact? getContactWithAddress(
    String address, {
    bool includeLabels = false,
  }) => null;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _UnnamedAddresses extends ChangeNotifier
    implements WalletAddressNotifier {
  @override
  String? nameForAddress(String address) => null;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

DotkService namingService() => DotkService(
  JsonClient(
    kBaseUrl,
    r: const RetryOptions(maxAttempts: 1, delayFactor: Duration.zero),
    minRequestGap: .zero,
    client: MockClient(
      (_) async => http.Response(
        json.encode({
          'names': ['kaspa'],
          'registryCovenantId': DotkRegistry.mainnet.covenantId,
        }),
        200,
        headers: {'content-type': 'application/json'},
      ),
    ),
  ),
);

Widget wrap(Widget child, {required DotkService service}) => ProviderScope(
  overrides: [
    themeProvider.overrideWithValue(
      const ThemeSetting(ThemeOptions.KASPIUM_DARK).getTheme(),
    ),
    contactsProvider.overrideWith((ref) => _NoContacts()),
    addressNotifierProvider.overrideWith((ref) => _UnnamedAddresses()),
    dotkNamesProvider.overrideWith(
      (ref) => DotkNamesNotifier(service, prover: provingEverything),
    ),
  ],
  child: MaterialApp(
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    home: Scaffold(body: child),
  ),
);

/// The plain text of every rich text line, since the account label is a
/// [RichText] rather than a [Text].
Iterable<String> richTexts(WidgetTester tester) => tester
    .widgetList<RichText>(find.byType(RichText))
    .map((widget) => widget.text.toPlainText());

void main() {
  final address = Address.decodeAddress(kAddress);

  /// Pumps [child] on a small phone, where an overflow would be an exception.
  Future<void> pumpWidget(
    WidgetTester tester,
    Widget child, {
    required DotkService service,
  }) async {
    tester.view.physicalSize = const Size(360, 740);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(wrap(child, service: service));
    await tester.pumpAndSettle();
  }

  group('AddressCard', () {
    testWidgets('shows the name the registry knows the address by', (
      tester,
    ) async {
      await pumpWidget(
        tester,
        AddressCard(address: address),
        service: namingService(),
      );

      expect(find.text('kaspa.k'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('shows no name when lookups are turned off', (tester) async {
      await pumpWidget(
        tester,
        AddressCard(address: address),
        service: DotkService.url(''),
      );

      expect(find.text('kaspa.k'), findsNothing);
      expect(tester.takeException(), isNull);
    });

    testWidgets('shows no name when the label is hidden', (tester) async {
      await pumpWidget(
        tester,
        AddressCard(address: address, showLabel: false),
        service: namingService(),
      );

      expect(find.text('kaspa.k'), findsNothing);
    });

    testWidgets('an explicit label wins over the name', (tester) async {
      await pumpWidget(
        tester,
        AddressCard(address: address, label: 'typed.k'),
        service: namingService(),
      );

      expect(find.text('typed.k'), findsOneWidget);
      expect(find.text('kaspa.k'), findsNothing);
      expect(tester.takeException(), isNull);
    });
  });

  group('AccountAddressWidget', () {
    final walletAddress = WalletAddress(
      index: 0,
      type: .receive,
      name: 'Receive 0',
      address: address,
    );

    testWidgets('shows the name beside the local label', (tester) async {
      await pumpWidget(
        tester,
        AccountAddressWidget(address: walletAddress),
        service: namingService(),
      );

      // The local label stays, and the name is an extra line above the
      // address.
      expect(richTexts(tester), contains('Receive 0'));
      expect(find.text('kaspa.k'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('shows no name when lookups are turned off', (tester) async {
      await pumpWidget(
        tester,
        AccountAddressWidget(address: walletAddress),
        service: DotkService.url(''),
      );

      expect(richTexts(tester), contains('Receive 0'));
      expect(find.text('kaspa.k'), findsNothing);
    });
  });
}
