import 'package:flutter/material.dart';

class HomeNotifier extends ValueNotifier<int> {
  HomeNotifier() : super(0);

  add() {
    value += 1;
  }

  sub() {
    value -= 1;
  }
}

class HomeProvider extends InheritedNotifier<HomeNotifier> {
  const HomeProvider({
    super.key,
    required super.notifier,
    required super.child,
  });

  static HomeNotifier of(BuildContext context) {
    return context
            .dependOnInheritedWidgetOfExactType<HomeProvider>()!
            .notifier ??
        HomeNotifier();
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
                value.toString(),
                style: const TextStyle(fontSize: 23),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.add),
      //   onPressed: () {
      //     HomeProvider.of(context).add();
      //   },
      // ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: MaterialButton(
              height: 100,
              color: Colors.blue[200],
              child: const Text("Adicionar"),
              onPressed: () => HomeProvider.of(context).add(),
            ),
          ),
          Expanded(
            child: MaterialButton(
              height: 100,
              color: Colors.orange[200],
              child: const Text("Subtrair"),
              onPressed: () => HomeProvider.of(context).sub(),
            ),
          ),
        ],
      ),
    );
  }
}
