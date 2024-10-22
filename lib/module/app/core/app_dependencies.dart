import 'package:get_it/get_it.dart';
import 'package:poscrisma/index.dart';

class AppDependencies {
  static final getIt = GetIt.instance;

  static void register() {
    MemoryDependencies.register();

    SplashDependencies.register();
    LoginDependencies.register();
    HomeDependencies.register();
  }
}
