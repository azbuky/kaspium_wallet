import 'package:coinslib/coinslib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../intro/intro_providers.dart';
import '../kaspa/kaspa.dart';
import '../kaspa/wallet/version.dart';
import '../l10n/l10n.dart';
import '../wallet/wallet_types.dart';
import '../wallet_address/wallet_address.dart';
import '../wallet_address/wallet_address_manager.dart';
import '../wallet_address/wallet_address_notifier.dart';
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

        final walletData = WalletData(
          name: introData.name ?? l10n.defaultWalletName,
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
        final addressPrefix = addressPrefixForNetwork(network);

        final client = ref.read(kaspaClientProvider);
        final api = ref.read(kaspaApiProvider);

        final hdPublicKey = BIP32.fromBase58(
          wallet.hdPublicKey(network),
          networkTypeForNetwork(network),
        );

        var discovery = DiscoveryResult(addresses: {}, txIds: {});
        if (network == KaspaNetwork.mainnet && !introData.generated) {
          message.value = l10n.walletSetupAddressDiscovery;
          discovery = await WalletAddressNotifier.addressDiscovery(
            hdPublicKey: hdPublicKey,
            addressPrefix: addressPrefix,
            client: client,
            api: api,
            startReceiveIndex: 0,
            startChangeIndex: 0,
            onProgress: (type, index) {
              final name = type == AddressType.receive
                  ? l10n.receiveIndex
                  : l10n.changeIndex;
              details.value = '$name $index';
            },
          );
        }
        final walletRepository = ref.read(walletRepositoryProvider);
        await walletRepository.openWalletBoxes(wallet, network: network);

        final db = ref.read(dbProvider);

        final boxInfo = wallet.boxInfo.getBoxInfo(KaspaNetwork.mainnet);

        final addressBoxKey = boxInfo.address.boxKey;
        final box = db.getTypedBox<WalletAddress>(addressBoxKey);
        await box.setAll(Map.fromEntries(
          discovery.addresses.map(
            (address) => MapEntry(address.encoded, address),
          ),
        ));

        message.value = l10n.fetchingTransactions;
        details.value = '';

        final service = ref.read(txServiceProvider(wallet));
        await service.cacheTxsWithIds(discovery.txIds);

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
