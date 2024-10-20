import 'package:poscrisma/index.dart';
import 'package:get_it/get_it.dart';

class HomeDependencies {
  static void register() {
    GetIt.instance.registerLazySingleton(() => HomeRepository());
    GetIt.instance.registerLazySingleton(() => HomeProvider());
  }
}
