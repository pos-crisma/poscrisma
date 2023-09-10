import 'package:flutter/material.dart';

import '../../core/reducer.dart';

enum HomeAction { add, sub }

interface class HomeState {
  int number;

  HomeState(this.number);
}

class HomeNotifier extends Reducer<HomeAction, HomeState> {
  HomeNotifier() : super(HomeState(0));

  @override
  void reduce(HomeAction action, content) {
    switch (action) {
      case HomeAction.add:
        value = HomeState(value.number + 1);
        break;
      case HomeAction.sub:
        value = HomeState(value.number - 1);
        break;
    }
  }
}

class HomeProvider extends InheritedNotifier<HomeNotifier> {
  const HomeProvider({
    super.key,
    required super.notifier,
    required super.child,
  });

  static HomeNotifier of(BuildContext context) {
    final ctx = context.dependOnInheritedWidgetOfExactType<HomeProvider>();

    if (ctx is HomeProvider) {
      final notifier = ctx.notifier;
      if (notifier is HomeNotifier) {
        return notifier;
      }
    }

    return HomeNotifier();
  }
}

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
              onPressed: () =>
                  HomeProvider.of(context).send(HomeAction.add, null),
            ),
          ),
          Expanded(
            child: MaterialButton(
              height: 100,
              color: Colors.orange[200],
              child: const Text("Subtrair"),
              onPressed: () =>
                  HomeProvider.of(context).send(HomeAction.sub, null),
            ),
          ),
        ],
      ),
    );
  }
}
