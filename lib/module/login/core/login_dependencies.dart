import 'package:poscrisma/index.dart';
import 'package:get_it/get_it.dart';

class LoginDependencies {
  static void register() {
    GetIt.instance.registerLazySingleton(() => LoginRepository());
    GetIt.instance.registerLazySingleton(() => LoginProvider());
  }
}
