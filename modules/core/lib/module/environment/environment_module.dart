import 'package:flutter_modular/flutter_modular.dart';

import 'environment.dart';

class EnvironmentModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.addInstance<Environment>(Environment.production);
  }
}
