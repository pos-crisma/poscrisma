import 'package:flutter/material.dart';

import 'effect/effect.dart';

abstract class Reducer<Action, State> extends ChangeNotifier {
  Reducer(this.value);

  State value;

  Effect reduce(Action action);

  void send(Action action) {
    effect(reduce(action));
  }

  void effect(Effect effect) {
    return switch (effect) {
      None() => notifyListeners(),
      Run(function: var fun) => fun(),
      Send(action: var ac) => send(ac),
    };
  }
}
