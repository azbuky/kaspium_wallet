import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../core/core_providers.dart';
import '../l10n/l10n.dart';
import '../util/util.dart';

const kPrivacyUrl = 'https://kaspium.io/assets/wallet/privacy-policy.html';
const kEulaUrl = 'https://kaspium.io/assets/wallet/eula.html';

class VersionWidget extends HookConsumerWidget {
  const VersionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final packageInfo = useFuture(
      PackageInfo.fromPlatform().then((value) => 'v${value.version}'),
    );

    void showPrivacyPolicy() => openUrl(kPrivacyUrl);

    void showEula() => openUrl(kEulaUrl);

    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(packageInfo.data ?? '', style: styles.textStyleVersion),
          Text(' | ', style: styles.textStyleVersion),
          GestureDetector(
            onTap: showPrivacyPolicy,
            child: Text(
              l10n.privacyPolicy,
              style: styles.textStyleVersionUnderline,
            ),
          ),
          Text(' | ', style: styles.textStyleVersion),
          GestureDetector(
            onTap: showEula,
            child: Text('EULA', style: styles.textStyleVersionUnderline),
          ),
        ],
      ),
    );
  }
}
