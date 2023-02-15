import 'package:flutter_riverpod/flutter_riverpod.dart';

class GenericStateNotifier<T> extends StateNotifier<T> {
  GenericStateNotifier(T state) : super(state);

  void updateState(T newState) {
    state = newState;
  }
}
