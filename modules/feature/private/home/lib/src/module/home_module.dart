import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../feature/create_family/provider/controller/store/create_family_store.dart';
import '../feature/home/provider/controller/store/home_store.dart';
import '../feature/home/view/home_page.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {
    i.add<HomeReducer>(
      HomeReducer.new,
      config: storeConfig(),
    );
    i.add<CreateFamilyReducer>(
      CreateFamilyReducer.new,
      config: storeConfig(),
    );
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const HomePage(),
      transition: TransitionType.downToUp,
      duration: Durations.short1,
    );
  }
}
