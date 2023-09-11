import 'package:flutter/foundation.dart';

sealed class Effect {}

class None extends Effect {}

class Run extends Effect {
  final AsyncCallback function;

  Run(this.function);
}

class Send<Action> extends Effect {
  final Action action;

  Send(this.action);
}
