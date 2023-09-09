import 'package:flutter/material.dart';

import 'reduce.dart';

class ReduceStore<T extends Reduce, State, StateError> extends StatelessWidget {
  const ReduceStore({
    super.key,
    required this.store,
    required this.builder,
    this.onLoading,
    this.onError,
  });

  final T store;
  final Widget Function(State viewStore) builder;
  final Widget Function(StateError viewStore)? onError;
  final Widget Function()? onLoading;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: store.state,
      stream: store.stream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return onError?.call(snapshot.error as StateError) ?? Container();
        }

        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return Container();
          case ConnectionState.done:
            return Container();
          case ConnectionState.waiting:
          case ConnectionState.active:
            if (snapshot.hasData) {
              return builder(snapshot.data as State);
            } else {
              return onLoading?.call() ??
                  const CircularProgressIndicator.adaptive();
            }
        }
      },
    );
  }
}
