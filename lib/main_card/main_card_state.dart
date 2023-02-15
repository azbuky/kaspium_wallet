import 'package:freezed_annotation/freezed_annotation.dart';

import '../util/sharedprefsutil.dart';

part 'main_card_state.freezed.dart';

@freezed
class MainCardState with _$MainCardState {
  const MainCardState._();
  const factory MainCardState.showBalance() = _ShowBalance;
  const factory MainCardState.hideBalance() = _HideBalance;
  const factory MainCardState.hideAll() = _HideAll;

  PriceConversion get priceConvertion => when(
      showBalance: () => PriceConversion.BTC,
      hideBalance: () => PriceConversion.HIDDEN,
      hideAll: () => PriceConversion.NONE);

  double get mainCardHeight => maybeWhen(
        showBalance: () => 120,
        orElse: () => 64,
      );

  double get settingsIconMarginTop => maybeWhen(
        showBalance: () => 5,
        orElse: () => 7,
      );

  double get maxFontSize => maybeWhen(
        showBalance: () => 28,
        orElse: () => 22,
      );
  double get iconFontSize => maybeWhen(
        showBalance: () => 26,
        orElse: () => 20,
      );
}
