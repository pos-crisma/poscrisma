import 'package:core/core.dart';

import 'local_storage.dart';

class StorageModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  void exportedBinds(Injector i) {
    i.addSingleton(LocalStorage.new);
  }
}
