import 'package:flutter/material.dart';

// Change Effect to sealed class, for dart pattern type
enum Effect { none, fireAndForgot }

abstract class Reducer<Action, State> extends ChangeNotifier {
  Reducer(this.value);

  State value;

  Effect reduce(Action action);

  void send(Action action) {
    effect(reduce(action));
  }

  void effect(Effect effect) {
    switch (effect) {
      case Effect.none:
        notifyListeners();
        break;
      case Effect.fireAndForgot:
        break;
    }
  }
}
