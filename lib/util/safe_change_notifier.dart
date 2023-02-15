import 'package:flutter/foundation.dart';

class SafeChangeNotifier extends ChangeNotifier {
  bool disposed = false;

  @override
  void notifyListeners() {
    if (disposed) {
      return;
    }
    super.notifyListeners();
  }
}
