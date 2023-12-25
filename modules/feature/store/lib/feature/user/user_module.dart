import 'package:core/core.dart';

import 'store/user_store.dart';

class UserModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  void exportedBinds(Injector i) {
    i.addSingleton(UserStore.new);
  }
}
