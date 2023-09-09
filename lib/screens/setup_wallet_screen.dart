import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../intro/intro_providers.dart';
import '../intro/intro_types.dart';
import '../kaspa/kaspa.dart';
import '../l10n/l10n.dart';
import '../utils.dart';
import '../wallet/wallet_types.dart';
import '../wallet_address/address_discovery.dart';
import '../wallet_address/wallet_address.dart';
import 'setup_failed_page.dart';

class SetupWalletScreen extends HookConsumerWidget {
  const SetupWalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final setupFailed = useState(false);
    final setupError = useRef<Object?>(null);

    final message = useState(l10n.walletSetupMessage);
    final details = useState('');

    Future<void> setupWallet() async {
      try {
        setupFailed.value = false;
        final introData = ref.read(introDataProvider);

        final seed = await introData.seed;
        if (seed == null) {
          throw Exception('Missing seed');
        }

        WalletKind getWalletKind(IntroData data) {
          if (data.mnemonic?.split(' ').length == 12) {
            final wallet = HdWallet.forSeedHex(seed, type: HdWalletType.legacy);
            final pubKey = wallet.derivePublicKey(typeIndex: 0, index: 0);
            return WalletKind.localHdLegacy(mainPubKey: pubKey.hex);
          }
          return WalletKind.localHdSchnorr();
        }

        final walletKind = getWalletKind(introData);

        final walletData = WalletData(
          name: introData.name ?? l10n.defaultWalletName,
          kind: walletKind,
          seed: seed,
          mnemonic: introData.mnemonic,
          password: introData.password,
        );

        // setup wallet
        final network = ref.read(networkProvider);
        final notifier = ref.read(walletBundleProvider.notifier);
        final wallet = await notifier.setupWallet(walletData);
        await notifier.selectWallet(wallet, network);

        final auth = ref.read(walletAuthNotifierProvider);
        if (auth == null) throw Exception('No active wallet');
        await auth.checkEncryptedState();
        await auth.unlock(password: walletData.password);

        // address discovery
        final client = ref.read(kaspaClientProvider);
        final apiService = ref.read(kaspaApiServiceProvider);
        final addressGenerator = auth.addressGenerator(network);

        final addressDiscovery = AddressDiscovery(
          client: client,
          api: apiService,
          addressGenerator: addressGenerator,
          addressNameCallback: (type, index) {
            return type == AddressType.receive
                ? l10n.receiveIndexParam('$index')
                : l10n.changeIndexParam('$index');
          },
        );

        WalletDiscoveryResult discovery;

        if (network == KaspaNetwork.mainnet && !introData.generated) {
          message.value = l10n.walletSetupAddressDiscovery;
          discovery = await addressDiscovery.addressDiscovery(
            startReceiveIndex: 0,
            startChangeIndex: 0,
            onProgress: (type, index) {
              final name = type == AddressType.receive
                  ? l10n.receiveIndex
                  : l10n.changeIndex;
              details.value = '$name $index';
              return true;
            },
          );

          if (discovery.receive.addresses.isEmpty) {
            discovery = (
              receive: DiscoveryResult(
                addresses: {0: addressDiscovery.mainAddress},
                txIds: {},
                scanIndexes: discovery.receive.scanIndexes,
              ),
              change: discovery.change,
            );
          }
        } else {
          discovery = addressDiscovery.newWalletDiscoveryResult;
        }

        final walletRepository = ref.read(walletRepositoryProvider);
        await walletRepository.openWalletBoxes(wallet, network: network);

        final addressBox = ref.read(addressBoxProvider(wallet));

        await addressBox.setAll(
          discovery.receive.addresses.map(
            (_, address) => MapEntry(address.key, address),
          ),
        );

        if (discovery.change.addresses.isNotEmpty) {
          await addressBox.setAll(
            discovery.change.addresses.map(
              (_, address) => MapEntry(address.key, address),
          ),
          );
        }

        final service = ref.read(txServiceProvider(wallet));
        await service.cacheWalletTxIds(discovery.txIds);

        await walletRepository.closeWalletBoxes(wallet, network: network);
        Navigator.of(context).pushNamedAndRemoveUntil('/', (_) => false);
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to create wallet', e, st);

        setupFailed.value = true;
        setupError.value = e;
      }
    }

    void restartSetup() {
      Navigator.of(context).pushNamedAndRemoveUntil('/', (_) => false);
    }

    useEffect(() {
      Future.delayed(const Duration(milliseconds: 200), setupWallet);
      return null;
    }, const []);

    if (setupFailed.value) {
      return SetupFailedPage(
        error: setupError.value,
        onRestart: restartSetup,
      );
    }

    return Scaffold(
      backgroundColor: theme.backgroundDark,
      body: SafeArea(
        minimum: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.035,
        ),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FractionallySizedBox(
                    widthFactor: 0.4,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Image.asset('assets/kaspa.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        message.value,
                        style: styles.textStyleSettingItemHeaderLarge,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        details.value,
                        style: styles.textStyleSettingItemHeader60,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: double.infinity,
              height: 16 + 2 * 55,
            )
          ],
        ),
      ),
    );
  }
}
