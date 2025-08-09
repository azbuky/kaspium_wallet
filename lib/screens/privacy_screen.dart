import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../util/platform.dart';
import 'privacy_overlay.dart';

class PrivacyScreen extends HookConsumerWidget {
  final Widget child;
  const PrivacyScreen({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final disabled = ref.watch(privacyOverlayDisabledProvider);
    final inactive = useState(false);

    useEffect(() {
      Future.microtask(
        () => precacheImage(AssetImage('assets/kaspa.png'), context),
      );
      return null;
    }, const []);

    useOnAppLifecycleStateChange((previous, state) {
      switch (state) {
        case AppLifecycleState.detached:
          break;
        case AppLifecycleState.resumed:
          inactive.value = false;
          break;
        case AppLifecycleState.inactive:
          if (kInDebugMode && kPlatformIsMacOS) {
            break;
          }
          inactive.value = true;
          break;
        case AppLifecycleState.hidden:
          break;
        case AppLifecycleState.paused:
          break;
      }
    });

    return Portal(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: PortalTarget(
          visible: inactive.value && !disabled,
          portalFollower: const PrivacyOverlay(),
          child: child,
        ),
      ),
    );
  }
}
