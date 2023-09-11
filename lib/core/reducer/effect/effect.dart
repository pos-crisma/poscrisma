sealed class Effect {}

class None extends Effect {}

class Run extends Effect {
  final Function function;

  Run(this.function);
}

class Send<Action> extends Effect {
  final Action action;

  Send(this.action);
}
