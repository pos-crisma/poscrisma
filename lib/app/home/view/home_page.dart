import 'package:flutter/material.dart';

import '../provider/reducer/action/home_action.dart';
import '../provider/store/home_store.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewStore = HomeStore.of(context);

    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {},
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                viewStore.value.number.toString(),
                style: const TextStyle(fontSize: 23),
              ),
              Text(
                viewStore.value.text.toString(),
                style: const TextStyle(fontSize: 23),
              ),
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
                  viewStore.send(HomeAction.webservice());
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: MaterialButton(
              height: 100,
              color: Colors.blue[200],
              child: const Text("Adicionar"),
              onPressed: () {
                viewStore.send(HomeAction.sum(random: "Sum action"));
              },
            ),
          ),
          Expanded(
            child: MaterialButton(
              height: 100,
              color: Colors.orange[200],
              child: const Text("Subtrair"),
              onPressed: () =>
                  viewStore.send(HomeAction.subtract(random: "Subtract action")),
            ),
          ),
        ],
      ),
    );
  }
}
