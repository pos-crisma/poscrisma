import 'package:core/core.dart';
import 'package:flutter/material.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await firebaseConfiguration();

  final analitycs = instanceAnalitycs();

  analitycs.logAppOpen();

  return runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
