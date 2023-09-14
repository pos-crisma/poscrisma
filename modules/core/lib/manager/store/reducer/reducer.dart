import 'package:flutter/material.dart';

import '../effect/effect.dart';

abstract class Reducer<Action, State> extends ChangeNotifier {
  Reducer(this.value);

  State value;

  Future<Effect> reduce(Action action);

  Future<T> send<T>(Action action) async => await _effect(await reduce(action));

  _effect(Effect effect) async => effect.fold(
        (_) => notifyListeners(),
        (e) => e.function,
        (e) => send(e.action),
      );
}
