import 'package:core/core.dart';
import 'package:flutter/material.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

void main() {
  return runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
