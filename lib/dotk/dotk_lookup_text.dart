import '../l10n/l10n.dart';
import 'dotk_types.dart';

/// The line under the send sheet's address field while it holds a name
String dotkLookupText(DotkLookup? lookup, AppLocalizations l10n) {
  final resolution = lookup?.resolution;
  if (lookup == null) {
    return l10n.dotkResolving;
  }
  if (resolution == null) {
    return dotkLookupError(lookup.status, l10n);
  }

  return l10n.dotkResolvedTo(
    resolution.display,
    _shortenedAddress(resolution.address),
  );
}

String dotkLookupError(DotkLookupStatus status, AppLocalizations l10n) =>
    switch (status) {
      .notRegistered => l10n.dotkNotRegistered,
      .unconfirmed => l10n.dotkUnconfirmed,
      .unavailable => l10n.dotkDisabledHint,
      _ => l10n.dotkLookupFailed,
    };

String _shortenedAddress(String address) {
  final index = address.indexOf(':') + 1;
  final head = index + 10;
  final tail = address.length - 6;
  if (tail <= head) {
    return address;
  }

  return '${address.substring(0, head)}…${address.substring(tail)}';
}
