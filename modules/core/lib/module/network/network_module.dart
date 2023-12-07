import 'package:flutter_modular/flutter_modular.dart';

import '../config/config_module.dart';
import 'client/base_request.dart';
import 'client/client.dart';
import 'interface/network.dart';

class NetworkModule extends Module {
  @override
  List<Module> get imports => [
        ConfigModule(),
      ];

  @override
  void exportedBinds(Injector i) {
    i.add<Network>(NetworkClient.new);
    i.add<BaseRequest>(BaseRequest.new);
  }
}
