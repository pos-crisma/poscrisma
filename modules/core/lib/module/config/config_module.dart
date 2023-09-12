import 'package:flutter_modular/flutter_modular.dart';

import '../environment/environment_module.dart';
import 'config_config.dart';

class ConfigModule extends Module {
  @override
  List<Module> get imports => [
        EnvironmentModule(),
      ];

  @override
  void binds(Injector i) {
    i.add(Config.new);
  }
}
