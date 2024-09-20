import 'package:poscrisma/index.dart';
import 'package:flutter/material.dart';

class {{name.pascalCase()}}Page extends StatefulWidget {
  const {{name.pascalCase()}}Page({super.key});

  @override
  State<{{name.pascalCase()}}Page> createState() => _{{name.pascalCase()}}PageState();
}

class _{{name.pascalCase()}}PageState extends State<{{name.pascalCase()}}Page> {
  final _controller = {{name.pascalCase()}}Controller();

  @override
  void initState() {
    super.initState();
    _controller.init(context);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("{{name.pascalCase()}}"),
      ),
    );
  }
}
