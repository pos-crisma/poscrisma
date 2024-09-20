import 'package:poscrisma/index.dart';
import 'package:get_it/get_it.dart';

class SplashDependencies {
  static void register() {
    GetIt.instance.registerLazySingleton(() => SplashRepository());
    GetIt.instance.registerLazySingleton(() => SplashProvider());
  }
}
