import 'package:flutter_modular/flutter_modular.dart';

import '../module/config/config_module.dart';
import '../module/environment/environment_module.dart';
import '../module/network/network_module.dart';
import '../module/storage/storage_module.dart';

class CoreModule extends Module {
  @override
  List<Module> get imports => [
        EnvironmentModule(),
        NetworkModule(),
        ConfigModule(),
        StorageModule(),
      ];
}
