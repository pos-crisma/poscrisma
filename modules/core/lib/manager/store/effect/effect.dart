import 'package:flutter/foundation.dart';

sealed class Effect {
  static Effect none() => None();
  static Effect run(AsyncCallback function) => Run(function);
  static Effect send(action) => Send(action);

  T fold<T>(
    T Function(None effect) none,
    T Function(Run effect) run,
    T Function(Send effect) send,
  ) =>
      switch (this) {
        None e => none(e),
        Run e => run(e),
        Send e => send(e),
      };
}

class None extends Effect {}

class Run extends Effect {
  final AsyncCallback function;

  Run(this.function);
}

class Send<Action> extends Effect {
  final Action action;

  Send(this.action);
}
