import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Text("Home Page"),
            ),
            AnimatedButton(
              onPress: () {
                Modular.get<LocalStorage>().removeAccess();
                Modular.to.navigate('/');
              },
              child: Text('Remove o usuario'),
              disabledChild: Container(),
              enableColor: Colors.deepPurple.shade400,
            )
          ],
        ),
      ),
    );
  }
}
