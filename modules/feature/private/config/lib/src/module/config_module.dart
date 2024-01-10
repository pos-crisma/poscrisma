import 'package:core/core.dart';
import 'package:flutter/material.dart';

class ConfigModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child(
      "/user",
      child: (_) => const Scaffold(),
      transition: TransitionType.fadeIn,
    );
    r.child(
      "/create_user",
      child: (_) => const Scaffold(),
      transition: TransitionType.fadeIn,
    );
    r.child(
      "/access_manager",
      child: (_) => const Scaffold(),
      transition: TransitionType.fadeIn,
    );
  }
}
