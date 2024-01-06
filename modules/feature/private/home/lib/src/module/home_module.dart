import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../feature/create_family/provider/controller/store/create_family_store.dart';
import '../feature/create_mascot/provider/controller/store/create_mascot_reducer.dart';
import '../feature/family/provider/controller/store/family_store.dart';
import '../feature/family_group/provider/controller/store/family_group_store.dart';
import '../feature/home/provider/controller/store/home_store.dart';
import '../feature/home/view/home_page.dart';
import '../feature/invite/provider/controller/store/invite_store.dart';

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
    i.add<FamilyGroupReducer>(
      FamilyGroupReducer.new,
      config: storeConfig(),
    );
    i.add<FamilyReducer>(
      FamilyReducer.new,
      config: storeConfig(),
    );
    i.add<CreateMascotReducer>(
      CreateMascotReducer.new,
      config: storeConfig(),
    );
    i.add<InviteReducer>(
      InviteReducer.new,
      config: storeConfig(),
    );
  }

  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (_) => const HomePage(),
      transition: TransitionType.scale,
      duration: Durations.short1,
    );
  }
}
