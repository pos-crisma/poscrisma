import 'package:core/core.dart';

import 'store/profile_store.dart';

class ProfileModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  void exportedBinds(Injector i) {
    i.addSingleton(ProfileStore.new);
  }
}
