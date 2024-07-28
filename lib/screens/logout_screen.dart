import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../app_router.dart';
import '../l10n/l10n.dart';

class LogoutScreen extends HookConsumerWidget {
  const LogoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    Future<void> logout() async {
      try {
        final notifier = ref.read(walletBundleProvider.notifier);
        final networkId = ref.read(networkIdProvider);
        await notifier.logout(networkId);
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to logout', error: e, stackTrace: st);
      } finally {
        appRouter.reload(context);
      }
    }

    useEffect(() {
      Future.delayed(const Duration(milliseconds: 1000), logout);

      return null;
    }, const []);

    return Scaffold(
      backgroundColor: theme.backgroundDark,
      body: SafeArea(
        minimum: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.035,
          top: MediaQuery.of(context).size.height * 0.075,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: FractionallySizedBox(
                    widthFactor: 0.4,
                    child: Image.asset('assets/kaspa.png'),
                  ),
                ),
              ],
            ),
            Text(
              l10n.loggingOutMessage,
              style: styles.textStyleSettingItemHeader.copyWith(fontSize: 18),
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
