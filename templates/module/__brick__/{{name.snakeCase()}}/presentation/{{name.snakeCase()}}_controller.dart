import 'package:poscrisma/index.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class {{name.pascalCase()}}Controller {
  final repository = GetIt.instance.get<{{name.pascalCase()}}Repository>();

  void init(BuildContext context) {}
  void dispose() {}
}
