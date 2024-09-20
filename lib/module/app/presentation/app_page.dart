import 'package:poscrisma/index.dart';
import 'package:flutter/material.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  final _router = AppRouter.init();

  Brightness brightness = Brightness.light;
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Poscrisma',
      theme: brightness == Brightness.light //
          ? ThemeData.light()
          : ThemeData.dark(),
      routerConfig: _router,
    );
  }
}
