// ignore_for_file: library_private_types_in_public_api

sealed class Effect {
  static Effect emit() => _None();
  static Effect run<T>(Future<T> Function() function) => _Run(function());
  static Effect runAndEmit<T>(Future<T> Function() function) =>
      _RunAndEmit(function());
  static Effect send(action) => _Send(action);

  T fold<T>(
    T Function(_None effect) none,
    T Function(_Run effect) run,
    T Function(_RunAndEmit effect) runAndEmit,
    T Function(_Send effect) send,
  ) =>
      switch (this) {
        _None e => none(e),
        _Run e => run(e),
        _RunAndEmit e => runAndEmit(e),
        _Send e => send(e),
      };
}

class _None extends Effect {}

class _Run<T> extends Effect {
  final Future<T> function;

  _Run(this.function);
}

class _RunAndEmit<T> extends Effect {
  final Future<T> function;

  _RunAndEmit(this.function);
}

class _Send<Action> extends Effect {
  final Action action;

  _Send(this.action);
}
