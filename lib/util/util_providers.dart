import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'ui_util.dart';

final uiUtilProvider = Provider((ref) {
  final l10n = ref.watch(l10nProvider);
  return UIUtil(l10n);
});
