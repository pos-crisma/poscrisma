import 'package:flutter/material.dart';
import 'package:design/design.dart';

class MascotPage extends StatelessWidget {
  const MascotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(),
      desktop: Container(),
    );
  }
}
