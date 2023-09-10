import 'package:flutter/material.dart';

import '../home_page.dart';
import '../reducer/home_reducer.dart';

Widget get viewProvider =>
    HomeProvider(notifier: HomeReducer(), child: const HomePage());

class HomeProvider extends InheritedNotifier<HomeReducer> {
  const HomeProvider({
    super.key,
    required super.notifier,
    required super.child,
  });

  static HomeReducer of(BuildContext context) {
    final ctx = context.dependOnInheritedWidgetOfExactType<HomeProvider>();

    if (ctx is HomeProvider) {
      final notifier = ctx.notifier;
      if (notifier is HomeReducer) {
        return notifier;
      }
    }

    return HomeReducer();
  }
}
