import 'package:poscrisma/index.dart';
import 'package:get_it/get_it.dart';

class {{name.pascalCase()}}Dependencies {
  static void register() {
    GetIt.instance.registerLazySingleton(() => {{name.pascalCase()}}Repository());
    GetIt.instance.registerLazySingleton(() => {{name.pascalCase()}}Provider());
  }
}
