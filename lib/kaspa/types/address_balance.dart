import 'package:freezed_annotation/freezed_annotation.dart';

import '../grpc/rpc.pb.dart';
import '../utils.dart';

part 'address_balance.freezed.dart';
part 'address_balance.g.dart';

@freezed
class AddressBalance with _$AddressBalance {
  const AddressBalance._();
  const factory AddressBalance({
    required String address,
    required BigInt balance,
  }) = _AddressBalance;

  factory AddressBalance.fromJson(Map<String, dynamic> json) =>
      _$AddressBalanceFromJson(json);

  factory AddressBalance.fromRpc(BalancesByAddressEntry rpc) => AddressBalance(
        address: rpc.address,
        balance: rpc.balance.toUnsignedBigInt(),
      );

  BalancesByAddressEntry toRpc() => BalancesByAddressEntry(
        address: address,
        balance: balance.toInt64(),
      );
}
