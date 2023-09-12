import 'package:flutter/material.dart';

import '../reducer/home_reducer.dart';

class HomeStore extends InheritedNotifier<HomeReducer> {
  const HomeStore({
    super.key,
    required super.notifier,
    required super.child,
  });

  static HomeReducer of(BuildContext context) {
    final ctx = context.dependOnInheritedWidgetOfExactType<HomeStore>();

    if (ctx is HomeStore) {
      final notifier = ctx.notifier;
      if (notifier is HomeReducer) {
        return notifier;
      }
    }

    return HomeReducer();
  }
}
