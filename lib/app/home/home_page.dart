import 'package:flutter/material.dart';
import 'package:core/store/reduce_store.dart';

import 'home_feature.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomeStore store = HomeStore.builder;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Valor calculavel: ",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              ReduceStore(
                store: store,
                builder: (HomeState viewStore) => Text(
                  "${viewStore.value}",
                  style: const TextStyle(
                    fontSize: 40,
                  ),
                ),
                onError: (String viewStore) => const Text("Error"),
                onLoading: () => Container(
                  height: 20,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: InkWell(
                  child: const Text(
                    "Menos - ",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  onTap: () {
                    store.send(HomeAction.sub, null);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: InkWell(
                  child: const Text(
                    "Mais + ",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  onTap: () {
                    store.send(HomeAction.add, null);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
