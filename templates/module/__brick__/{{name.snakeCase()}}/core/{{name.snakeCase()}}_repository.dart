import 'package:poscrisma/index.dart';
import 'package:get_it/get_it.dart';

class {{name.pascalCase()}}Repository {
  final provider = GetIt.instance.get<{{name.pascalCase()}}Provider>();
}
