import 'package:poscrisma/core/core.dart';

import 'action/home_action.dart';
import 'state/home_state.dart';

class HomeReducer extends Reducer<HomeAction, HomeState> {
  HomeReducer() : super(HomeState(1, ""));

  @override
  Effect reduce(HomeAction action) {
    return switch (action) {
      Added(value: var i, random: var content) => () {
          value.number += i;
          value.text = content;
          return None();
        },
      Subtracted(value: var i, random: var content) => () {
          value.number -= i;
          value.text = content;
          return None();
        },
      Multied(value: var i, random: var content) => () {
          value.number *= i;
          value.text = content;
          return Send(
              Added(value: 2, random: "$content with send Added Action"));
        },
      Divided(value: var i, random: var content) => () {
          value.number = value.number ~/ i;
          value.text = content;
          return Run(() => send(Added(random: "Send after run effects")));
        },
    }();
  }
}
