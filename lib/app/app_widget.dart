import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'App Acampamento',
      theme: LightTheme.theme,
      darkTheme: DarkTheme.theme,
      routerConfig: Modular.routerConfig,
    ); //added by extension
  }
}
