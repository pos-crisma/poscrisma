import 'package:core/core.dart';

import 'repositories/storage_client.dart';

class StorageModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  void exportedBinds(Injector i) {
    i.addSingleton(LocalStorage.new);
    i.addLazySingleton<Storage>(StorageHive.new);
  }
}
