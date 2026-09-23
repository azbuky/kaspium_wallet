import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

import 'dotk_names.dart';
import 'dotk_proof.dart';
import 'dotk_service.dart';

class _CachedName {
  final String? name;
  final DateTime goodUntil;
  final bool carried;

  const _CachedName(this.name, this.goodUntil, {this.carried = false});

  bool get isStale => DateTime.now().isAfter(goodUntil);
}

/// The names to show beside the addresses the wallet displays. This is a
/// display cache and a display cache only: a name shown here is never the
/// answer to where a payment goes, since owners change. Sending resolves the
/// name again.
class DotkNamesNotifier extends ChangeNotifier {
  static const kFailureMaxAge = Duration(minutes: 1);

  final DotkService service;
  final DotkProver? Function() prover;
  final Logger? log;
  final Duration maxAge;

  final _names = <String, _CachedName>{};
  final _pending = <String>{};

  bool _disposed = false;

  DotkNamesNotifier(
    this.service, {
    required this.prover,
    this.log,
    this.maxAge = const Duration(minutes: 10),
  });

  /// The display name for [address] right now. A miss or a stale entry
  /// schedules a lookup, and listeners are notified when it lands.
  String? nameForAddress(String address) {
    if (!service.isEnabled) {
      return null;
    }

    final cached = _names[address];
    if (cached != null && !cached.isStale) {
      return cached.name;
    }

    _scheduleLookup(address);

    return cached?.name;
  }

  bool isPending(String address) => _pending.contains(address);

  void _scheduleLookup(String address) {
    if (!_pending.add(address)) {
      return;
    }
    // Lookups are scheduled from widget builds, so nothing may notify before
    // this turn of the event loop is over
    scheduleMicrotask(() => _lookup(address));
  }

  Future<void> _lookup(String address) async {
    String? shown;
    var carried = false;
    var maxAge = this.maxAge;
    try {
      final claim = await service.claimAddress(address);
      final name = claim == null
          ? null
          : await prover()
                ?.displayName(address, claim)
                .timeout(DotkService.kTimeout);
      // The node not backing any name may be the indexer lagging a transfer
      if (claim != null && name == null) {
        maxAge = kFailureMaxAge;
      }
      shown = name == null ? null : DotkName.display(name);
    } catch (e, st) {
      log?.w('Failed to look up names for $address', error: e, stackTrace: st);
      // A failure says nothing new, so the last name shown stays, but only
      // through one failure
      final last = _names[address];
      shown = last == null || last.carried ? null : last.name;
      carried = true;
      maxAge = kFailureMaxAge;
    } finally {
      _pending.remove(address);
    }

    _names[address] = _CachedName(
      shown,
      DateTime.now().add(maxAge),
      carried: carried,
    );
    if (_disposed) {
      return;
    }
    notifyListeners();
  }

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }
}
