import 'package:poscrisma/index.dart';

class AppDependencies {
  static void register() {
    MemoryDependencies.register();

    SplashDependencies.register();
    LoginDependencies.register();
  }
}
