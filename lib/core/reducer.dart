import 'package:flutter/material.dart';

abstract class Reducer<Action, State> extends ValueNotifier<State> {
  Reducer(super.value);

  void send(Action action, dynamic content) => reduce(action, content);
  void reduce(Action action, dynamic content);
}
