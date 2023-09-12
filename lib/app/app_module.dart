import 'package:core/core.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poscrisma/app/home/module/home_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  void routes(r) {
    r.module('/', module: HomeModule());
  }
}
