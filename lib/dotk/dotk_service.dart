import 'dart:typed_data';

import 'package:retry/retry.dart';

import '../kaspa/api/json_client.dart';
import '../kaspa/utils.dart';
import 'dotk_names.dart';
import 'dotk_records.dart';
import 'dotk_types.dart';

/// Reads the public `.k` names indexer. Lookups happen while the user waits,
/// so an indexer that is slow or silent gives up early rather than holding
/// anything up.
class DotkService {
  static const kRetryOptions = RetryOptions(
    maxAttempts: 2,
    delayFactor: Duration(milliseconds: 300),
  );

  static const kTimeout = Duration(seconds: 10);

  final JsonClient _client;
  final Duration timeout;

  const DotkService(this._client, {this.timeout = kTimeout});

  DotkService.url(String baseUrl, {this.timeout = kTimeout})
    : _client = _clientForUrl(baseUrl);

  static JsonClient _clientForUrl(String baseUrl) {
    final url = baseUrl.trim().replaceAll(RegExp(r'/+$'), '');
    if (url.isEmpty) {
      return VoidJsonClient();
    }
    return JsonClient(url, r: kRetryOptions);
  }

  String get baseUrl => _client.baseUrl;

  bool get isEnabled => _client is! VoidJsonClient;

  /// The indexer's answer for [target], or null when it names nobody to pay
  Future<DotkNameClaim?> claimName(String target) async {
    final (parent, label) = DotkName.splitTarget(target);
    // The parent becomes a path segment below, so the charset rule holds here
    // whatever the caller already checked
    if (!DotkName.isValid(parent)) {
      return null;
    }
    if (label != null &&
        (parent == DotkName.suffixSegment || !DotkName.isValidLabel(label))) {
      return null;
    }

    final path = '/names/$parent';
    final Object? result;
    try {
      result = await _client.get(path).timeout(timeout);
    } on ApiException catch (e) {
      if (e.statusCode == 404 || e.statusCode == 400) {
        return null;
      }
      rethrow;
    }

    final json = _object(result, path);
    final address = json['address'];
    if (address == null) {
      // A covenant owns the name, so there is nothing to pay
      return null;
    }
    if (address is! String || address.isEmpty) {
      throw FormatException('Unexpected address for $path: $address');
    }
    final card = _card(json['card'], path);
    if (label != null && card == null) {
      return null;
    }

    return DotkNameClaim(
      target: target,
      address: address,
      registryCovenantId: _registryCovenantId(json, path),
      card: card,
    );
  }

  Future<DotkAddressClaim?> claimAddress(String address) async {
    final path = '/addresses/$address';
    final Object? result;
    try {
      result = await _client.get(path).timeout(timeout);
    } on ApiException catch (e) {
      if (e.statusCode == 400) {
        return null;
      }
      rethrow;
    }

    final json = _object(result, path);
    final names = _names(json['names'], path);
    if (names.isEmpty) {
      return null;
    }

    names.sort(DotkName.displayOrder);

    return DotkAddressClaim(
      names: names,
      primaryCards: _primaryCards(json['cards'], path),
      registryCovenantId: _registryCovenantId(json, path),
    );
  }

  Map<String, Object?> _object(Object? value, String path) {
    if (value is! Map<String, Object?>) {
      throw FormatException('Unexpected response for $path: $value');
    }
    return value;
  }

  List<String> _names(Object? value, String path) {
    if (value == null) {
      return [];
    }
    if (value is! List) {
      throw FormatException('Unexpected names for $path: $value');
    }
    final names = <String>[];
    for (final name in value) {
      if (name is! String) {
        throw FormatException('Unexpected name for $path: $name');
      }
      names.add(name);
    }

    return names;
  }

  Map<String, DotkCard> _primaryCards(Object? value, String path) {
    if (value == null) {
      return const {};
    }
    if (value is! List) {
      throw FormatException('Unexpected cards for $path: $value');
    }

    final primaryCards = <String, DotkCard>{};
    for (final card in value) {
      if (card is! Map<String, Object?>) {
        throw FormatException('Unexpected card for $path: $card');
      }
      final records = card['records'];
      if (records is! Map<String, Object?>?) {
        throw FormatException('Unexpected records for $path: $records');
      }
      if (records?['primary'] != true) {
        continue;
      }
      final name = card['name'];
      if (name is! String) {
        throw FormatException('Unexpected card name for $path: $name');
      }
      primaryCards[name] = _card(card, path)!;
    }

    return primaryCards;
  }

  DotkCard? _card(Object? value, String path) {
    if (value == null) {
      return null;
    }
    if (value is! Map<String, Object?>) {
      throw FormatException('Unexpected card for $path: $value');
    }
    if (value['live'] != true) {
      throw FormatException('Unexpected card for $path: it is not live');
    }
    final spenderType = value['spenderType'];
    if (spenderType != DotkOwnerType.schnorr &&
        spenderType != DotkOwnerType.ecdsaOddY &&
        spenderType != DotkOwnerType.ecdsaEvenY) {
      throw FormatException('Unexpected card spender for $path: $spenderType');
    }
    final blob = value['blob'];
    if (blob is! String || blob.length > 2 * DotkRecords.blobMaxLength) {
      throw FormatException('Unexpected card blob for $path');
    }

    return DotkCard(
      spenderType: spenderType as int,
      spender: _bytes(value['spender'], path, length: 32),
      blob: _bytes(blob, path),
    );
  }

  String _registryCovenantId(Map<String, Object?> json, String path) {
    final id = json['registryCovenantId'];
    if (id is! String) {
      throw FormatException('Unexpected registry covenant id for $path: $id');
    }
    return id;
  }

  Uint8List _bytes(Object? value, String path, {int? length}) {
    Uint8List? bytes;
    try {
      if (value is String && value.length.isEven) {
        bytes = hexToBytes(value);
      }
    } on FormatException catch (_) {}
    if (bytes == null || (length != null && bytes.length != length)) {
      throw FormatException('Unexpected bytes for $path: $value');
    }
    return bytes;
  }
}
