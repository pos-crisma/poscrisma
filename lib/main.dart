import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

void configureApp() {
  usePathUrlStrategy();
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await firebaseConfiguration();

  final analitycs = instanceAnalitycs();

  analitycs.logAppOpen();

  configureApp();

  return runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
