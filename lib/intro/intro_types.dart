import 'package:freezed_annotation/freezed_annotation.dart';

part 'intro_types.freezed.dart';

enum IntroPage {
  walletName,
  password,
  passwordOnLaunch,
  importSeed,
  backupSeed,
  backupSafety,
  backupConfirm,
}

@freezed
class IntroState with _$IntroState {
  const factory IntroState.init() = _IntroStateInit;
  const factory IntroState.push({
    required IntroPage page,
  }) = _IntroStatePush;
  const factory IntroState.pop() = _IntroStatePop;
}

@freezed
class IntroData with _$IntroData {
  const factory IntroData({
    String? mnemonic,
    String? userSeed,
    Future<String>? seed,
    String? name,
    String? pin,
    String? password,
    @Default(false) bool generated,
    @Default(false) bool completed,
  }) = _IntroData;
}
