import 'package:core/core.dart';

import 'action/home_action.dart';
import 'state/home_state.dart';

class HomeReducer extends Reducer<HomeAction, HomeState> {
  HomeReducer() : super(HomeState(1, ""));

  // final TaskReducer taskReducer;

  @override
  Future<Effect> reduce(HomeAction action) async {
    return action.fold(
      (action) => _sun(),
      (action) => _subtract(),
      (action) => _result(action.random),
      (action) => _divider(),
      (action) => _service(),
      (action) => _taskService(),
    );
  }

  _sun() {
    value.number += 1;

    return Effect.send(HomeAction.multiplay());
  }

  _subtract() {
    value.number -= 1;

    return Effect.none();
  }

  _result(String random) {
    value.number += 2;
    value.text = random;

    return Effect.send(HomeAction.divided());
  }

  _divider() {
    value.number -= 2;
    return Effect.none();
  }

  _service() {
    return Effect.run(
      () async {
        return "Home Reducer -> Action executed -> Task Reducer new State";
      }(),
    );
  }

  _taskService() {
    return Effect.none();
  }
}
