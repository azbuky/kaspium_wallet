import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../kaspa/kaspa.dart';

final _networkBannerProvider = Provider<String?>((ref) {
  final network = ref.watch(networkProvider);
  if (network != KaspaNetwork.mainnet) {
    return network.name.toUpperCase();
  }
  return null;
});

class NetworkBanner extends ConsumerWidget {
  final Widget child;

  const NetworkBanner({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final network = ref.watch(_networkBannerProvider);

    if (network == null) {
      return child;
    }

    return Banner(
      message: network,
      location: BannerLocation.topEnd,
      textStyle: styles.textStyleNetworkBanner,
      color: theme.background,
      child: child,
    );
  }
}
