import 'package:core/core.dart';

import '../feature/user/user_module.dart';

class StoreModule extends Module {
  @override
  List<Module> get imports => [
        UserModule(),
      ];
}
