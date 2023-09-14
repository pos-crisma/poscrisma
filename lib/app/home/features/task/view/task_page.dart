import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:poscrisma/app/home/features/task/reducer/task_reducer.dart';

import '../reducer/action/task_action.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewStore = context.watch<TaskReducer>();

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Modular.to.pop(),
        ),
      ),
      body: Column(
        children: [
          Text(viewStore.value.text),
          MaterialButton(
            height: 50,
            color: Colors.purple[700],
            child: const Text(
              "Chama serviço rest",
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
              ),
            ),
            onPressed: () {
              viewStore.send(TaskAction.webservice());
            },
          ),
        ],
      ),
    );
  }
}
