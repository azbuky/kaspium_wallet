import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'main_card_state.dart';

class MainCardNotifier extends StateNotifier<MainCardState> {
  MainCardNotifier() : super(MainCardState.showBalance()) {}

  void setNextState() {
    //final sharedPrefsUtil = read(sharedPrefsUtilProvider);

    //final pc = nextStateMapping[state.priceConvertion] ?? PriceConversion.NONE;

    //sharedPrefsUtil.setPriceConversion(pc);
    Future.delayed(Duration(milliseconds: 150), () {
      state = MainCardState.showBalance();
    });
  }
}
