import 'package:core/core.dart';

import '../feature/profile/profile_module.dart';

class StoreModule extends Module {
  @override
  List<Module> get imports => [
        ProfileModule(),
      ];
}
