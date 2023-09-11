import 'package:flutter/material.dart';

import 'effect/effect.dart';

abstract class Reducer<Action, State> extends ChangeNotifier {
  Reducer(this.value);

  State value;

  Future<Effect> reduce(Action action);

  Future<void> send(Action action) async {
    _effect(await reduce(action));
  }

  void _effect(Effect effect) async {
    return switch (effect) {
      None() => notifyListeners(),
      Run(function: var fun) => fun(),
      Send(action: var ac) => send(ac),
    };
  }
}
