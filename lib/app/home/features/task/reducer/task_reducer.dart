import 'package:core/core.dart';
import 'package:poscrisma/app/home/provider/reducer/action/home_action.dart';
import 'package:poscrisma/app/home/provider/reducer/home_reducer.dart';

import 'action/task_action.dart';
import 'state/task_state.dart';

class TaskReducer extends Reducer<TaskAction, TaskState> {
  TaskReducer(this._homeReducer) : super(TaskState(""));

  final HomeReducer _homeReducer;

  @override
  Future<Effect> reduce(TaskAction action) async {
    return action.fold(
      (action) => _service(),
      (action) => _back(),
      (action) => _receive(action.text),
    );
  }

  _service() {
    return Effect.run<void>(() async {
      final teste = await _homeReducer.send<String>(HomeAction.webservice());

      send(TaskAction.receive(text: teste));
    }());
  }

  _receive(String newText) {
    value.text = newText;

    return Effect.none();
  }

  _back() {
    Modular.to.pop();
    value.text = "Back action";

    return Effect.none();
  }
}
