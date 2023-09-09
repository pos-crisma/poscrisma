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
          ReduceStore(
            store: store,
            builder: (HomeState viewStore) => Text(viewStore.title),
            onError: (String viewStore) => const Text("Error"),
            onLoading: () => Container(
              height: 20,
              color: Colors.amber,
            ),
          ),
          InkWell(
            child: const Text("Tap here"),
            onTap: () {
              store.send(HomeAction.newTitle, "324");
            },
          )
        ],
      ),
    );
  }
}
