import 'package:flutter/material.dart';

enum Effect { none, fireAndForgot }

abstract class Reducer<Action, State> extends ChangeNotifier {
  Reducer(this.value);

  State value;

  Effect reduce(Action action, dynamic content);

  void send<T>(Action action, T content) {
    effect(reduce(action, content));
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
