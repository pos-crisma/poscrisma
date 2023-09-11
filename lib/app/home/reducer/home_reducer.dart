import '../../../core/reducer.dart';
import 'action/home_action.dart';
import 'state/home_state.dart';

class HomeReducer extends Reducer<HomeAction, HomeState> {
  HomeReducer() : super(HomeState(0, ""));

  @override
  Effect reduce(HomeAction action) {
    return switch (action) {
      Added(value: var i, random: var content) => () {
          value.number += i;
          value.text = content;
          return Effect.none;
        },
      Subtracted(value: var i, random: var content) => () {
          value.number -= i;
          value.text = content;
          return Effect.none;
        },
    }();
  }
}
