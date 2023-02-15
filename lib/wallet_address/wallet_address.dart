import 'package:freezed_annotation/freezed_annotation.dart';

import '../kaspa/kaspa.dart';

part 'wallet_address.freezed.dart';
part 'wallet_address.g.dart';

enum AddressType {
  @JsonValue(0)
  receive,
  @JsonValue(1)
  change;

  int get typeIndex => typeIndexForAddressType(this);
}

int typeIndexForAddressType(AddressType type) {
  switch (type) {
    case AddressType.receive:
      return 0;
    case AddressType.change:
      return 1;
  }
}

@freezed
class WalletAddress with _$WalletAddress {
  const WalletAddress._();
  const factory WalletAddress({
    required int index,
    required AddressType type,
    required String name,
    required Address address,
  }) = _WalletAddress;

  String get encoded => address.encoded;

  int get typeIndex => typeIndexForAddressType(type);

  factory WalletAddress.fromJson(Map<String, dynamic> json) =>
      _$WalletAddressFromJson(json);

  String getShortName() {
    List<String> splitName = name.split(' ');
    if (splitName.length > 1 &&
        splitName[0].length >= 1 &&
        splitName[1].length >= 1) {
      String firstChar = splitName[0].substring(0, 1);
      String secondPart = splitName[1].substring(0, 1);
      if ((int.tryParse(splitName[1]) ?? 0) >= 10) {
        secondPart = splitName[1].substring(0, 2);
      }
      return firstChar + secondPart;
    } else if (name.length > 2) {
      return name.substring(0, 2);
    }
    return name;
  }
}
