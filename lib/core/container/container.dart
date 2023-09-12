import 'package:flutter_modular/flutter_modular.dart';
import 'package:poscrisma/core/config/app_config.dart';
import 'package:poscrisma/core/network/client/client.dart';

import '../environment/environment.dart';
import '../network/interface/network.dart';

class CoreModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.add(AppConfig.new);
    i.add<Network>(NetworkClient.new);
    i.addInstance<Environment>(Environment.develop);
  }
}
