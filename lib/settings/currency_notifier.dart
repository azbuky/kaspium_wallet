import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../settings/available_currency.dart';
import '../util/sharedprefsutil.dart';

class CurrencyNotifier extends StateNotifier<AvailableCurrency> {
  final SharedPrefsUtil sharedPrefsUtil;

  CurrencyNotifier(this.sharedPrefsUtil) : super(sharedPrefsUtil.getCurrency());

  Future<void> updateCurrency(AvailableCurrency currency) {
    state = currency;
    return sharedPrefsUtil.setCurrency(currency);
  }
}
