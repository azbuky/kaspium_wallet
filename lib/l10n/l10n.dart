import 'package:flutter/material.dart';

import 'l10n_gen.dart';

export 'l10n_gen.dart';

AppLocalizations l10nOf(BuildContext context) => AppLocalizations.of(context)!;

class L10nWrapper {
  AppLocalizations? l10n;
  L10nWrapper();
}

final l10nWrapper = L10nWrapper();
