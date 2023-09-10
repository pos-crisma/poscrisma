import 'dart:math';

import 'package:flutter/material.dart';

import 'provider/home_provider.dart';
import 'reducer/home_reducer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = HomeProvider.of(context).value;

    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {},
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                value.number.toString(),
                style: const TextStyle(fontSize: 23),
              ),
              Text(
                value.text.toString(),
                style: const TextStyle(fontSize: 23),
              ),
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
                HomeProvider.of(context).send(HomeAction.add,
                    "Numero randomico: ${0 + Random().nextInt((10000 + 1) - 0)}");
              },
            ),
          ),
          Expanded(
            child: MaterialButton(
              height: 100,
              color: Colors.orange[200],
              child: const Text("Subtrair"),
              onPressed: () => HomeProvider.of(context).send(HomeAction.sub,
                  "Numero randomico: ${0 + Random().nextInt((10000 + 1) - 0)}"),
            ),
          ),
        ],
      ),
    );
  }
}
