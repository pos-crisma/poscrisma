import 'package:poscrisma/index.dart';
import 'package:get_it/get_it.dart';

class MemoryDependencies {
  static void register() {
    GetIt.instance.registerLazySingleton(() => MemoryRepository());
    GetIt.instance.registerLazySingleton(() => MemoryProvider());
  }
}
