import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../app_router.dart';
import 'password_lock_page.dart';

class PasswordLockScreen extends ConsumerWidget {
  const PasswordLockScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PasswordLockPage(
      canCancel: false,
      validator: (password) async {
        final walletAuth = ref.read(walletAuthNotifierProvider);
        if (walletAuth != null) {
          final unlocked = await walletAuth.unlock(password: password);
          if (!unlocked) {
            return false;
          }
        }
        appRouter.reload(context);
        return true;
      },
    );
  }
}
