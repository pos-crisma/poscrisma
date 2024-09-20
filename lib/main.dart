import 'dart:io';

import 'package:flutter/material.dart';
import 'package:poscrisma/index.dart';

void main() async {
  await _init();
  runApp(const AppPage());
}

Future<void> _init() async {
  HttpOverrides.global = CustomHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  AppDependencies.register();
}
