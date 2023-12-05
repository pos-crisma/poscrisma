import 'package:flutter/material.dart';

import '../effect/effect.dart';

abstract class Reducer<Action, State> extends ValueNotifier<State> {
  Reducer(this.state) : super(state);

  State state;

  Future<Effect> reduce(Action action);

  Future<T> send<T>(Action action) async => await _effect(await reduce(action));

  _effect(Effect effect) async => effect.fold(
        (_) => notifyListeners(),
        (e) => e.function,
        (e) => send(e.action),
      );
}
