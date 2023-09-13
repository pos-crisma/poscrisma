// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/foundation.dart';

sealed class Effect {
  static Effect none() => _None();
  static Effect run(AsyncCallback function) => _Run(function);
  static Effect send(action) => _Send(action);

  T fold<T>(
    T Function(_None effect) none,
    T Function(_Run effect) run,
    T Function(_Send effect) send,
  ) =>
      switch (this) {
        _None e => none(e),
        _Run e => run(e),
        _Send e => send(e),
      };
}

class _None extends Effect {}

class _Run extends Effect {
  final AsyncCallback function;

  _Run(this.function);
}

class _Send<Action> extends Effect {
  final Action action;

  _Send(this.action);
}
