import 'package:flutter/material.dart';

enum Effect { none, fireAndForgot }

abstract class Reducer<Action, State> extends ValueNotifier<State> {
  Reducer(super.value);

  void send(Action action, dynamic content) {
    // TODO: High order function
    effect(reduce(action, content));
  }

  Effect reduce(Action action, dynamic content);

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
